//import 'dart:io';
import 'package:flutter/material.dart';
import 'package:guia02/screens/home_screen.dart'; //Material app

void main() => runApp(const MyApp()); //primera llamada de la app

class MyApp extends StatelessWidget {
  //statelesswidget "clase dinamica"
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //hacer wrap del container
    return const MaterialApp(
      debugShowCheckedModeBanner: false, //widget constante
      title: 'Libro de las Plantas',
      home: PlantsBook(), // MaterialApp
    );
  }
}

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: const Text(
            'Medicina Natural',
            style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: 'Inicio',
              ),
              Tab(
                icon: Icon(Icons.question_mark),
                text: 'Preguntas Frecuentes',
              ),
              Tab(
                icon: Icon(Icons.people),
                text: 'Personas',
              ),
              Tab(
                icon: Icon(Icons.info),
                text: 'Informacion',
              ),
            ],
          ),
        ), // AppBar
        body: const TabBarView(
          children: [
            HomeScreen(),
          ],
        ),
      ), // Scaffold
    ); // DefaultTabController
  }
}
