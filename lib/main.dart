import 'package:flutter/material.dart';
import 'package:guia02/screens/home_screen.dart';
import 'package:guia02/screens/widgets_examples.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Libro de Plantas',
      home: PlantsBook(),
    );
  }
}

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // ahora hay 2 pestañas
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade300,
          title: const Text('Medicina Natural'),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: [
              Tab(icon: Icon(Icons.nature), text: "Plantas"),
              Tab(icon: Icon(Icons.widgets), text: "Widgets"),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HomeScreen(),       // pantalla de plantas
            WidgetsExamples(),  // pantalla de ejemplos
          ],
        ),
      ),
    );
  }
}
