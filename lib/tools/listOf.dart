import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:sneakers/tools/shoecard.dart';

class ListOfWidgets extends StatelessWidget {
  ListOfWidgets({super.key, required this.shoes});
  List<Map<String, dynamic>> shoes = [
    {
      "image": 'assets/images/1.png',
      "color": Color(0xffFDBE7F),
      "shoeName": "Air Max 290 red machine",
      "shoeType": "Running",
    },
    {
      "image": 'assets/images/2.png',
      "color": Color(0xffC0A4A2),
      "shoeName": "Air Max pegasus 37",
      "shoeType": "Lifestyle",
    },
    {
      "image": 'assets/images/2.png',
      "color": Color(0xffC0A4A2),
      "shoeName": "Air Max pegasus 37",
      "shoeType": "Lifestyle",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(bottom: 0, left: 5, right: 5),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: shoes.length,
            itemBuilder: (context, i) => ShoeCard(
                image: shoes[i]['image'],
                color: shoes[i]['color'],
                shoeName: shoes[i]['shoeName'],
                shoeType: shoes[i]['shoeType'])),
      ),
    );
  }
}
