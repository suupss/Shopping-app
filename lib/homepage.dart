import 'package:flutter/material.dart';
import 'package:shopping_app/cart.dart';
import 'package:shopping_app/product_list.dart';



class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentPage = 0;
  List <Widget> pages = const [ProductList(), Cart()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: IndexedStack(
      index: currentPage,
      children: pages,
     ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 0,
        unselectedFontSize: 0,
        
        iconSize: 30,
        onTap: (value){
          setState(() {
            currentPage = value;
          });

        },
        currentIndex: currentPage ,
        items: const [BottomNavigationBarItem(
          
        label:'' ,
        icon:Icon( Icons.home)),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: '')],)
    );
  }
}