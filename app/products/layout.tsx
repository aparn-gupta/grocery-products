import React, { ReactNode } from 'react'
import { ShoppingCart } from 'lucide-react'
import { Badge } from "@/components/ui/badge"


const Layout = ({children}: {children: ReactNode}) => {
  return (
    <div className='pt-10'>

     

       <div className='w-[95%] mx-auto'> 
      <div className='flex justify-between'>
        <h1 className='text-3xl font-bold mb-10'>Products</h1>
     {/* <div className='relative flex bg-pink-500'>
      <div className='absolute top-0 left-0'> 
        <ShoppingCart size={32} /></div>
    
     <div className='absolute top-0 left-3'><Badge variant={"default"}>2</Badge></div>

     </div> */}
      <div className='  '>
      <div className='flex'> 
      <div className=''><Badge variant={"default"} className='bg-green-700'>21</Badge></div>

        <ShoppingCart size={32} /></div>
    

     </div>
      </div>

        {children}
        </div>
      
    </div>
  )
}

export default Layout
