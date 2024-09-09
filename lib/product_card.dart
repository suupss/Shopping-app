import 'package:flutter/material.dart';
class ProductCard extends StatelessWidget {
  final String title;
  final double price;
  final String images;
  final int index;
  // final List sizes;
  const ProductCard({
    required this.title,
    required this.price,
    required this.images,
    required this.index,
    // required this.sizes,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(29),
        color: index.isEven? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.secondary
      ),
      margin: EdgeInsets.all(18),
      padding: EdgeInsets.all(16),
     
      child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      Text(title, style: Theme.of(context).textTheme.bodyLarge,),
      const SizedBox(
        height: 6,
      ),
      Text('\$$price', style: Theme.of(context).textTheme.bodyMedium,),
      const SizedBox(
        height: 20,
      ),
      Center(child: Image.asset(images, height: 175,))
      
      
        ],
      ),
  );
  }}