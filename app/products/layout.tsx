

import React, { ReactNode } from "react";

// import { prisma } from "@/lib/prisma";
import Cart from "./Cart";
// import { createClient } from "redis";




// let sessionUser = 3;

// let client = createClient();

// client.connect();

// client.on("error", () => {
//   console.log("Error connecting to redis client");
// });

// const fetchCartData = async () => {
//   try {
//     const cartData = await prisma.cart.findMany({
//       where: {
//         userId: sessionUser,
//       },
//     });
//     console.log(cartData);
//     //   await client.set("newley1234", "myvalue1234")
//     // const checking = await client.get("newley1234")
//     // console.log("checkingredis: ", checking)
//     return cartData;
//   } catch (err) {
//     console.log(err);
//   }

// };





const Layout =  ({ children }: { children: ReactNode }) => {

 
  // console.log( "here" + localStorage.getItem("currentUser"))

  // let data = await fetchCartData();

  return (
    <div className="pt-10">
      <div className="w-[95%] mx-auto">
        <div className="flex justify-between">
          <h1 className="text-3xl font-bold mb-10">Products</h1>
          {/* <div className='relative flex bg-pink-500'>
      <div className='absolute top-0 left-0'> 
        <ShoppingCart size={32} /></div>
    
     <div className='absolute top-0 left-3'><Badge variant={"default"}>2</Badge></div>

     </div> */}
          <Cart />
        </div>

        {children}
      </div>
    </div>
  );
};

export default Layout;
