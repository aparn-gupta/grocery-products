import { NextResponse } from "next/server";
import { prisma } from "@/lib/prisma";


export async function GET() {

    try {

        const allProducts = await prisma.products.findMany()
        return NextResponse.json({message: "hello from product page apiiii", allProducts})

    } catch (err) {

        console.log(err)
        return NextResponse.json({message: "failed to fetch events", status: 500})

    }


  

    


}


export async function POST(req: Request) {
   try {

    const body = await req.json()

    const {name, category, brand, price, quantity } = body

    const newProduct = await prisma.products.create({
        data: {
            name: name,
            category: category,
            brand: brand,
            price: price,
            quantity: quantity,
            

        }
    })

    return NextResponse.json({message: "product inserted successfully ", newProduct})


   } catch (err) {
    console.log(err)
    return NextResponse.json({message: "failed to insert new product", status: 500})

   }


}