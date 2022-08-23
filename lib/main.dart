import 'package:flutter/material.dart';
import 'package:store_app_shop/view/screens/home_screen.dart';
import 'package:store_app_shop/view/screens/update_product_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: 'Shop App',
      initialRoute: HomeScreen.id,
      routes: {
        HomeScreen.id: (context) => const HomeScreen(),
        UpdateProductPage.id: (context) => UpdateProductPage(),
      },
    );
  }
}
