import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          PlantsCard(context, 'asset/imagenes/manzanilla.webp', 'Menta', 'Planta Informacion'),
          PlantsCard(context, 'asset/imagenes/muna.png', 'Manzanilla', 'Planta Informacion'),
          PlantsCard(context, 'asset/imagenes/planta.webp', 'Eucalipto', 'Planta Informacion'),
        ],
      ),
    );
  }
}

Widget PlantsCard(BuildContext context, String imagePath, String nombre, String autor) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 125,
      child: Card(
        child: Row(
          children: <Widget>[
            Container(
              height: 125,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(width: 26),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  nombre,
                  style: const TextStyle(
                      fontSize: 18, fontFamily: 'Quicksand', color: Colors.brown, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 4),
                Text(
                  autor,
                  style: const TextStyle(fontSize: 16, fontFamily: 'Quicksand', color: Colors.orange),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
