import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu Treino'),
        backgroundColor: Colors.orange[700],
      ),
      drawer: Drawer(
        child: Center(
          child: Text('Drawe aberto'),
        ),
      ),
      body: Column(
        children: [
          Cartao(),
          CartaoDetails(),
        ],
      ),
    );
  }
}

class Cartao extends StatelessWidget {
  const Cartao({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text('Treino A - Realizado em: 23/12/2023'),
    );
  }
}

class CartaoDetails extends StatelessWidget {
  const CartaoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text('Treino A - Realizado em: 23/12/2023'),
    );
  }
}
