"use client"

import { ShoppingCart } from 'lucide-react'
import { Badge } from "@/components/ui/badge"
import { serverName } from "../page";
import { useEffect, useState } from "react";
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from "@/components/ui/dialog"



const Cart = () => {
  const [cartData, setCartData] = useState([])
//   const [productData, setProductData] = useState([])


//   const fetchProducts = async () => {
//   try {
//     const response = await fetch(`${serverName}/api/products`);
//     const result = await response.json();
//     console.log(result.allProducts);
//     setProductData(result.allProducts)
//   } catch (err) {
//     console.log(err);
//   }
// };

  const fetchCartData = async () => {
    let sessionUser =  localStorage.getItem("currentUser")
    try {
      const response = await fetch(`${serverName}/cart/${sessionUser}`);
      const result = await response.json();
      console.log(result.cartData);
      setCartData(result.cartData);
    } catch (err) {
      console.log(err);
    }
  };

  let total = 0

  for (let each of cartData) {
    total += (Number(each.Quantity) + Number(each.product.price))

  }

  console.log("total: ", total)



  useEffect(() => {
    fetchCartData()

  }, [])

  return (
    <div>

<div className='  '>


<Dialog>
  <DialogTrigger>

  <div className='flex'> 
      <div className=''><Badge variant={"default"} className='bg-green-700'> {cartData.length} </Badge></div>

        <ShoppingCart size={32} />
        </div>
    
  </DialogTrigger>
  <DialogContent className='max-w-[60vw]!'>
    <DialogHeader>
      <DialogTitle>Your Cart</DialogTitle>
      <DialogDescription>
       <table className='w-full mt-6'>
        <tr>
          <th>Item</th>
          <th>Brand</th>
          <th>Quantity</th>
          <th>Price/pack</th>
          <th>Total</th>
        </tr>
        {cartData.map((item) => (
          
            <tr className='my-4'> 

              <th>{item.product.name}</th>
              <th>{item.product.brand}</th>

              <th className='text-blue-500'>{item.Quantity}</th>
              <th>${item.product.price}</th>

              <th className='text-green-500'>${item.product.price * item.Quantity}</th>

               </tr>
          
        ))}

       
       </table>

       <div className='flex justify-end mt-4'>Total : <span className='text-green-500 font-semibold'>${total}</span></div>
      </DialogDescription>
    </DialogHeader>
  </DialogContent>
</Dialog>
    
    

     </div>

   
      
    </div>
  )
}

export default Cart
