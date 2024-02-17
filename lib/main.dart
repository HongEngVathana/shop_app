import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shose_app/cart.dart';
import 'package:shose_app/intropage.dart';




void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=> Cart(),
    builder: (context, child) => const MaterialApp(
      home: IntroPage(),
    ),
    );

  }
}
