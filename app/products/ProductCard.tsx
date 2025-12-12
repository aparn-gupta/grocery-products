"use client";

import React from "react";
import { serverName } from "../page";

import {
  Card,
  CardAction,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Button } from "@/components/ui/button"
import { Plus } from "lucide-react";

import { useEffect, useState } from "react";

const ProductCard = ({ products }) => {
  const [allCategories, setCategories] = useState([]);

  useEffect(() => {
    const fetchCategories = async () => {
      try {
        const response = await fetch(`${serverName}/categories`);
        const result = await response.json();
        setCategories(result.categories);
        // console.log(result.categories);
      } catch (err) {
        console.log(err);
      }
    };

    fetchCategories();
  }, []);



  const category = products.category ? JSON.parse(products.category) : [];

  const categoryNames = category.map((item: number) => {
    const name  = allCategories.find(cat => cat.id == item)
    return (
      {catId: item, catName: name}
    )
  })

  // console.log(categoryNames)

  return (
    <div>
      <Card className="bg-accent">
        <CardHeader>
          <CardTitle className="text-xl">{products.name}</CardTitle>
          <CardDescription>
            {/* {categoryNames.map((item: {catName: string, catId: number}) => (
              <div key={item.catId}> {item.catName} </div>
            ))} */}
          </CardDescription>
          <CardAction className="text-sm text-zinc-500 pt-[5px]">{products.brand}</CardAction>
        </CardHeader>
        <CardContent>
          <p className="text-green-600 font-semibold"> $<span className="text-black">{products.price}</span></p>
        </CardContent>
        <CardFooter>
          {/* <p>Card Footer</p> */}
          <Button size={"sm"} className="bg-green-700 hover:bg-green-600 hover:scale-105" > <Plus/>  Add to Cart</Button>
        </CardFooter>
      </Card>
    </div>
  );
};

export default ProductCard;
