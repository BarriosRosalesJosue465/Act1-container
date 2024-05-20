import 'package:flutter/material.dart';

class ItemCfe extends StatelessWidget {
  const ItemCfe({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 5),
                color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                spreadRadius: 5,
                blurRadius: 5)
          ]),
      child: Column(children: [
        CircleAvatar(
          backgroundImage: NetworkImage(
              "https://raw.githubusercontent.com/LBrandonC06/Img_FlutterFlow_6J/main/UII_Act1/empl.png"),
        ), // CircleAvatar
        SizedBox(
          height: 10,
        ), // SizedBox
        Text(
          "Nuestros Trabajador",
          style: Theme.of(context).textTheme.titleSmall,
        ), // Text
        SizedBox(
          height: 5,
        ), // SizedBox
        Row(
          children: List.generate(
              5,
              (index) => Icon(
                    Icons.star,
                    color: Colors.amber,
                    size: 18,
                  )), // Icon / List.generate )
        )
      ]),
    );
  }
} // BoxShadow
// BoxDecoration
