import { prisma } from "@/lib/prisma";
import { NextResponse } from "next/server";

export async function GET(req, context) {
  let {userId} = await context.params;
  console.log(userId)

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
