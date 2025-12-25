"use client"
import { ShoppingCart } from 'lucide-react'
import { Badge } from "@/components/ui/badge"

const Cart = ({data}) => {
  return (
    <div>

<div className='  '>
      <div className='flex'> 
      <div className=''><Badge variant={"default"} className='bg-green-700'> {data?.length} </Badge></div>

        <ShoppingCart size={32} />
        </div>
    

     </div>
      
    </div>
  )
}

export default Cart
