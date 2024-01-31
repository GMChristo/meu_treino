// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:meu_treino/modules/grupo/grupo_page.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/homePage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meu Treino'),
        // backgroundColor: Colors.orange[700],
      ),
      drawer: Drawer(
        child: Container(
          margin: const EdgeInsets.only(top: 20),
          padding: EdgeInsets.zero,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/jojo pose.jpg'),
              fit: BoxFit.cover,
              opacity: 0.2,
            ),
          ),
          child: const ListTile(
            title: Text('Item 1'),
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/jojo pose2.png',
            opacity: const AlwaysStoppedAnimation(0.1),
          ),
          const GrupoPage(),
        ],
      ),
    );
  }
}
