import 'package:flutter/material.dart';
import 'package:shopping_app/global_variables.dart';
import 'package:shopping_app/product_card.dart';
import 'package:shopping_app/product_detail.dart';
import 'package:shopping_app/tabs.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
        child: Column(
          children: [Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text('Shoes\nCollection',style: Theme.of(context).textTheme.titleLarge),
               const Expanded(
                  child:  TextField(
                    
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(14),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(width: 1),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        )
                      ),
                      
                      prefixIcon: Icon(Icons.search),
                hintText: 'Search',
                hintStyle: TextStyle(fontSize: 20)),
            
                ),
                )
              ],
            ),
          ),
         const  SizedBox(
            height: 40,
          ),
        
          const SizedBox(
            height: 40, child: 
            Tabs()),
            Expanded(
              child: ListView.builder(
                
                itemCount: products.length,
                itemBuilder: (context,index){
                  final product = products[index];
                return  GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>
                    ProductDetail(
                    title: product['title'] as String,
                    price: product['price'] as double,
                    image: product['imageurl'] as String,
                    sizes: product['sizes'] as List<int>,
                    )));
                  },
                  child: ProductCard(
                    title: product['title'] as String,
                    price: product['price'] as double,
                    images: product['imageurl'] as String,
                    index: index,
        
                  ),
                );
              }),
            )
        ]),
      );
  }
}