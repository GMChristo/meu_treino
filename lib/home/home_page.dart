// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:meu_treino/treino_details/treino_details_page.dart';

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

          /// Forama alternativa de fazer sobreposição utilizando Stack
          // child: Stack(
          //   children: <Widget>[
          //     Image.asset(
          //       'assets/jojo pose.jpg',
          //       opacity: const AlwaysStoppedAnimation(0.1),
          //       fit: BoxFit.cover,
          //       alignment: Alignment.bottomCenter,
          //     ),
          //     const ListTile(
          //       title: Text('Item 1'),
          //     ),
          //   ],
          // ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/jojo pose2.png',
            opacity: const AlwaysStoppedAnimation(0.1),
          ),
          // const SingleChildScrollView(
          //   padding: EdgeInsets.all(10),
          //   child: Column(
          //     children: [
          //       Cartao(),
          //       Cartao(),
          //     ],
          //   ),
          // ),

          Column(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(5),
                child: const Column(
                  children: [
                    Cartao(),
                    Cartao(),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Cartao extends StatelessWidget {
  const Cartao({super.key});

  @override
  Widget build(BuildContext context) {
    // return ElevatedButton(
    // onPressed: () {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(TreinoDetailsPage.routeName);

        /// forma de navegação sem utilizar o nome da rota
        // Navigator.of(context).push(
        //   MaterialPageRoute(
        //     builder: (context) => TreinoDetails(),
        //   ),
        // );
        print('Clicou!');
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Treino A - Costas'),
                Text('Realizado em: 23/12/2023'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
