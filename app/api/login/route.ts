import { NextResponse } from "next/server";
import bcrypt from "bcryptjs";
import jwt from "jsonwebtoken";
import { prisma } from "@/lib/prisma";

import type { NextRequest } from "next/server";




export async function POST (req: NextRequest) {

  const body  = await req.json()

   try {
    const { email, password } = body;

    console.log(email, password)


    if (!email || !password) {
      return NextResponse.json({ message: "Email & password required" }, {status: 400});
    }
  
    const user = await prisma.users.findUnique({
      where: {email: email}
    })
  
    console.log(user)
  
    if (!user) {
      return NextResponse.json({ message: "User not found" }, {status: 401});
    }
  
    const isMatch = await bcrypt.compare(password, user.password);
  
    if (!isMatch) {
      return NextResponse.json({ message: "Wrong Password" }, {status: 403});
    }
  
   
  
    return NextResponse.json({
      auth: true,
      user: {
        id: user.id,
        name: user.name,
        email: user.email,
      },
     
    
    }, {status: 200});

   } catch (err) {
   return NextResponse.json({
    
    message: err
   }, {status: 500})

   }
 
}