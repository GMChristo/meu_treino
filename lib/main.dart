import 'package:flutter/material.dart';
import 'package:meu_treino/home/home_page.dart';
import 'package:meu_treino/treino_details/treino_details_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(), //Ativa o modo escuro
      title: 'Meu Treino',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        colorScheme: const ColorScheme.dark(), //Seta a aplicação para utilizar o tema escuro
        // useMaterial3: true,
      ),
      // home: const HomePage(),
      routes: {
        '/': (_) => const HomePage(),
        TreinoDetailsPage.routeName: (_) => const TreinoDetailsPage(),
      },
    );
  }
}
