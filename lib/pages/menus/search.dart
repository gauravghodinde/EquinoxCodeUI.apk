import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sneakers/tools/listOf.dart';
import 'package:sneakers/tools/myappbar.dart';

class saearchMenu extends StatelessWidget {
  saearchMenu({super.key});
  TextEditingController search = TextEditingController();
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
      child: Column(
        children: [
          MyAppBar(title: "Look For"),
          Padding(
            padding: const EdgeInsets.fromLTRB(32.0, 8, 32, 8),
            child: Container(
              padding: EdgeInsets.only(left: 15),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black), // Border color
                borderRadius:
                    BorderRadius.circular(8.0), // Optional: Border radius
              ),
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.search,
                    color: Colors.black54,
                  ),
                  hintText: 'Enter your text here',
                  border:
                      InputBorder.none, // Hide the default border of TextField
                  contentPadding: EdgeInsets.all(
                      8.0), // Optional: Padding inside the TextField
                ),
              ),
            ),
          ),
          ListOfWidgets(shoes: shoes),
        ],
      ),
    );
  }
}
