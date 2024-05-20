import 'package:flutter/material.dart';
import 'package:a1_cristobal/pantallas_0456/panel_0456/widwets/item_cfe.dart';

void main() => runApp(const PanelPantalla_0456());

class PanelPantalla_0456 extends StatelessWidget {
  const PanelPantalla_0456({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff097209),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://raw.githubusercontent.com/LBrandonC06/Img_FlutterFlow_6J/main/UII_Act1/empl.png")),
          )
        ],
        title: Text(
          "Cristobal CFE",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Color(0xff0de1e1),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 5),
                  color: Theme.of(context).colorScheme.primary.withOpacity(.1),
                  spreadRadius: 5,
                  blurRadius: 5,
                )
              ]),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Hola aqui estoy",
                hintStyle: TextStyle(fontWeight: FontWeight.w300),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff000000),
                )),
          ),
        ),
        Container(
          height: 180,
          margin: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://raw.githubusercontent.com/LBrandonC06/Img_FlutterFlow_6J/main/Act13-GridView/cfe-ahorro.jpg"))),
        ),
        ListTile(
          title: Text("Top Trabajadores"),
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
          trailing: Icon(Icons.filter_list_outlined),
        ),
        Expanded(
            child: GridView.count(
          padding: EdgeInsets.all(15),
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 15,
          children: [for (int i = 1; i <= 10; i++) ItemCfe()],
        )) // GridView.court // Expanded
      ]),
    );
  }
}
