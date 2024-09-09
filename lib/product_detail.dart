import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String title;
  final double price;
  final String image;
  final List<int> sizes;
  const ProductDetail(
    {required this.title,
    required this.price,
    required this.image,
    required this.sizes,
    super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();

}

class _ProductDetailState extends State<ProductDetail> {
   int? selectedSize;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
      centerTitle: true,
        title: const Text('Details',style: TextStyle(fontSize: 25),
        ),
    
    
      ) ,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            
            children: [
              Text(widget.title,style: Theme.of(context).textTheme.titleMedium,),
              const Spacer(),
            Image.asset(widget.image),
            const Spacer(flex: 2,),
            
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.secondary
              ),
              child: Column( children: [
                const Padding(padding: EdgeInsets.all(15)),
                Text('\$${widget.price}',style: Theme.of(context).textTheme.titleMedium,),
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 40,
                  child: ListView.builder(
                            
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.sizes.length,
                    itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: GestureDetector(
                        
                        onTap: (){
                        selectedSize = widget.sizes[index];
                          setState(() {
                            
                          });
                        },
                        child: Chip(
                          
                          label: Text(widget.sizes[index].toString()),labelStyle: const TextStyle(color:Colors.grey),
                         backgroundColor: selectedSize == widget.sizes[index]? Theme.of(context).colorScheme.primary: Theme.of(context).colorScheme.secondary
                          ),
                      ),);
                  }),
                ),
                const SizedBox(
                  height: 30,
                  
                ),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.black),
                  
                   child: const Text('Add to Cart')),
                )
                
              ],),
              
            )
            ]),
        ),
      ),
    );
  }
}