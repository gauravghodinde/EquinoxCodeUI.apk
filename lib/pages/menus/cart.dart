import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sneakers/tools/buton.dart';
import 'package:sneakers/tools/listOf.dart';
import 'package:sneakers/tools/myappbar.dart';

class MyCart extends StatelessWidget {
  MyCart({super.key});
  List<Map<String, dynamic>> shoes = [
    {
      "image": 'assets/images/1.png',
      "color": Color(0xffFDBE7F),
      "shoeName": "Air Max 290 red machine",
      "shoeType": "Running",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: Column(
          children: [
            MyAppBar(
              title: "Cart",
            ),
            ListOfWidgets(shoes: shoes),
            Padding(
              padding: const EdgeInsets.fromLTRB(32.0, 32, 32, 120),
              child: Butons("Checkout", Icons.shopping_bag),
            )
          ],
        ),
      ),
    );
  }
}
