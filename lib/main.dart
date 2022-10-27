// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_new_ui_project/screens/products/product_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_new_ui_project/constants.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: kPrimaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: kPrimaryColor)
      ),
      home: const ProductScreen(),
    );
  }
}