import 'package:flutter/material.dart';
import 'package:shopping_app/homepage.dart';
void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
home: const Homepage() ,
debugShowCheckedModeBanner: false,
theme: ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue,
  primary: const Color.fromARGB(255, 185, 217, 242),
  secondary: const Color.fromARGB(255, 231, 244, 254)),
  
  textTheme: const TextTheme(
    titleLarge: TextStyle(fontFamily: 'Lato', fontSize: 35,fontWeight: FontWeight.bold, height: 0.8),
    titleMedium: TextStyle(fontFamily: 'Lato', fontSize: 25, fontWeight: FontWeight.bold ),
    bodyLarge: TextStyle(fontFamily: 'Lato', fontSize: 20, fontWeight: FontWeight.bold ),
    bodyMedium: TextStyle(fontFamily: 'Lato', fontSize: 18, fontWeight: FontWeight.bold ),
    
  ),
  appBarTheme: const AppBarTheme(
    color:   Color.fromARGB(255, 185, 217, 242),
   
  )
),



    );
  }
}