import { prisma } from "@/lib/prisma";
import ProductCard from "./ProductCard";




// const fetchProducts = async () => {
//   try {
//     const response = await fetch("http://localhost:3000/api/products");
//     const result = await response.json();
//     console.log(result.allProducts);
//     return result.allProducts;
//   } catch (err) {
//     console.log(err);
//   }
// };

const fetchProducts = async () => {
  try {
    
    const data = await prisma.products.findMany()
    // console.log(data);
    return data;
  } catch (err) {
    console.log(err);
  }
};

const Page = async () => {
  const data = await fetchProducts();

  const dataFormatted = data?.map(item => (
    {...item, price: item.price.toNumber()}
  ))

  console.log(dataFormatted);



  return (
    <div className="grid grid-cols-4 gap-4">
      {/* helllo */}
      {dataFormatted?.map((item) => (
       
        <ProductCard key={item.id} products={item} />
      ))}
    </div>
  );
};

export default Page;
