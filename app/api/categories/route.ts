import { prisma } from "@/lib/prisma";
import { NextResponse } from "next/server";


export async function GET() {
    try {
        const categories = await prisma.categories.findMany()
        return NextResponse.json({categories})

    } catch (err) {
        console.log(err)
        return NextResponse.json({status: 500, message: "Failed to fetch Categories"})


    }
        

    
}