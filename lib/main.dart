import 'package:flutter/material.dart';
import 'package:login/Cadastro.dart';
import 'package:login/detalheServico.dart';
import 'Login.dart';
import 'home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Main(), // Chamando o widget Main como tela inicial
      routes: {
        '/': (context) => const Main(),
        '/login': (context) => const Login(),
        '/home': (context) => const Home(),
        '/Detalhe': (context) => const DetalheServivo(),
        '/cadastro': (context) => const Cadastro(),
      },
    );
  }
}

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/login');
          },
          child: const Text("Ir para loginr"),
        ),
      ),
    );
  }
}
