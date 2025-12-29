import { prisma } from '@/lib/prisma'
import { NextResponse } from 'next/server'
import client from '@/lib/redis'

export async function POST (req: Request, context) {
    const {userId, productId} = await context.params

    console.log(userId, productId)

    try {


    const cartItems =  await prisma.cart.findMany({
        where: {
            userId: Number(userId),
            productId: Number(productId)
        }
    })

    console.log(cartItems)

    let quantity = 1

    if (cartItems.length) {
        quantity += cartItems[0].Quantity

        const updateCart = await prisma.cart.update({
            where: {
                userId_productId:  {
                    userId: Number(userId),
                    productId: Number(productId)
                },
            },
            data: {Quantity : quantity}

        })

        console.log("quantity: ", quantity)


        console.log("updated")


        console.log(updateCart)

        await client.del(`user:${userId}`)
          
      
          return NextResponse.json({
             message: "Cart item inserted",
            //  cartId: updateCart?.count
          })

    } else {
        const insertItems = await prisma.cart.create({
            data : {
    
                Quantity: quantity,
                userId: Number(userId),
                productId: Number(productId)
    
            }
        })

        console.log("inserted")


        console.log(insertItems)
        await client.del(`user:${userId}`)


        return NextResponse.json({
            message: "Cart item inserted",
            // cartId: updateCart?.count
         })
    

    }

  
  


  } catch (err) {
    console.log(err)
    return NextResponse.json({
        message: "Error adding cart item"
     }, {status: 500})

  }
   




}