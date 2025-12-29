import { prisma } from "@/lib/prisma";
import { NextResponse } from "next/server";
import client from "@/lib/redis";


export async function GET(req, context) {
  let {userId} = await context.params;
  console.log(userId)


  // await client.set("newkeyMango", "hehehehehehemango")

  // const testRedis = await client.get("newkeyMango")

  // console.log(testRedis)

  const cachedCartData = await client.get(`user:${userId}`)

  if (cachedCartData) {
    console.log("cached cart data")
    console.log(cachedCartData)

    return NextResponse.json({cartData: JSON.parse(cachedCartData)})

  }



  try {
    const cartData = await prisma.cart.findMany({
      where: {
        userId: Number(userId),
      },
      include: {
        product: {
            select: {
            name: true,
            brand: true,
            price: true
            }
        }
      }
      
    });

    await client.set(`user:${userId}`, JSON.stringify(cartData))




    

    // console.log(cartData);

    return NextResponse.json({
      cartData,
    });
  } catch (err) {
    console.log(err);
    return NextResponse.json(
      {
        message: "Error getting cart items",
      },
      { status: 500 }
    );
  }
}
