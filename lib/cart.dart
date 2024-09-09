import 'package:flutter/material.dart';
import 'package:shopping_app/global_variables.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Cart',style: Theme.of(context).textTheme.titleMedium,),
        
      ),
      
      
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          itemCount: cart.length,
          itemBuilder: (context,index)
            
        {
            final cartValue = cart[index];
            return ListTile(
              
              title: Text(cartValue['title'] as String),
              subtitle: Text('Size: ${cartValue['sizes']}'),
              trailing: IconButton(onPressed: (){}, icon:const Icon(Icons.delete, color: Colors.red,size: 30,) ),
              leading: CircleAvatar(
              radius: 30,
                child: Image.asset(cartValue['imageurl'] as String,),
              ),
            );
        }),
      )
    );
  }
}