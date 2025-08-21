import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          PlantsCard(context),
          PlantsCard(context),
          PlantsCard(context),
        ],
      ),
    );
  }
}

Widget PlantsCard(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 125,
      child: Card(
        child: Row(
          children: <Widget>[
            SizedBox(
              height: 125,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'asset/muna.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ), // Container con imagen
            const SizedBox(width: 26),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Planta',
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Quicksand',
                    color: Colors.brown,
                    fontWeight: FontWeight.w800,
                  ),
                ), // Título
                SizedBox(height: 4),
                Text(
                  'Informacion planta',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Quicksand',
                    color: Colors.orange,
                  ),
                ), // Subtítulo
              ],
            ),
          ],
        ), // Row
      ), // Card
    ), // SizedBox
  ); // Padding
}
