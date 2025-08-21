import 'package:flutter/material.dart';

class WidgetsExamples extends StatelessWidget {
  const WidgetsExamples({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        const Text("📌 Ejemplo 1: Text", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        const Center(
          child: Text(
            'Hola, mundo',
            style: TextStyle(fontSize: 18, color: Colors.blue),
          ),
        ),
        const Divider(),

        const Text("📌 Ejemplo 2: Column con varios Text", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Column(
          children: const [
            Text('Texto 1'),
            Text('Texto 2'),
            Text('Texto 3'),
          ],
        ),
        const Divider(),

        const Text("📌 Ejemplo 3: Container con estilo", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Container(
          padding: const EdgeInsets.all(20),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12),
            boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
          ),
          child: const Text("Soy un Container estilizado"),
        ),
        const Divider(),

        const Text("📌 Ejemplo 4: Row con íconos", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            Icon(Icons.star, color: Colors.red),
            Icon(Icons.star, color: Colors.green),
            Icon(Icons.star, color: Colors.blue),
          ],
        ),
        const Divider(),

        const Text("📌 Ejemplo 5: Stack con Positioned", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Center(
          child: Stack(
            children: [
              Container(width: 200, height: 200, color: Colors.amber),
              const Positioned(top: 20, left: 20, child: Icon(Icons.star, size: 50, color: Colors.red)),
              const Positioned(bottom: 20, right: 20, child: Icon(Icons.favorite, size: 50, color: Colors.blue)),
            ],
          ),
        ),
      ],
    );
  }
}
