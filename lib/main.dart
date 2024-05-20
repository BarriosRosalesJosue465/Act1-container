import 'package:flutter/material.dart';
import 'package:a1_cristobal/pantallas_0438/panel_0438/panel_pantalla.dart';

void main() => runApp(LaCfe());

class LaCfe extends StatelessWidget {
  const LaCfe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Barrios web",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home: PanelPantalla_0456(),
    );
  }
}
