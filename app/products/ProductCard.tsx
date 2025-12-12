"use client"

import React from 'react'


import {
    Card,
    CardAction,
    CardContent,
    CardDescription,
    CardFooter,
    CardHeader,
    CardTitle,
  } from "@/components/ui/card"



const ProductCard = ({products}) => {
  return (
    <div>


<Card>
  <CardHeader>
    <CardTitle>{products.name}</CardTitle>
    <CardDescription>{products.category}</CardDescription>
    <CardAction>{products.brand}</CardAction>
  </CardHeader>
  <CardContent>
    <p>{products.price}</p>
  </CardContent>
  <CardFooter>
    <p>Card Footer</p>
  </CardFooter>
</Card>


      
    </div>
  )
}

export default ProductCard
