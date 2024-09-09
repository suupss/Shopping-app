import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List<String> filters = ['All','Adidas','Nike','Bata'];
  String? selectedfilter;
  @override
  void initState() {
    selectedfilter = filters[0];
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection:Axis.horizontal,
      itemCount: filters.length,
      shrinkWrap: true,
      itemBuilder: (context,index) {
      final filter = filters[index];
      return
       Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: GestureDetector(
          onTap: () {
            selectedfilter = filter;
            setState(() {
              });
          },
          child: Chip(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
              color: Colors.transparent
            )
          ),
                    label: Text(filters[index],style: const TextStyle(fontSize: 15),
          
          ),
          backgroundColor: selectedfilter == filters[index]? Theme.of(context).colorScheme.primary: Theme.of(context).colorScheme.secondary,
          ),
        ),
  );});
  }
}