import 'package:flutter/material.dart';

class TreinoDetails extends StatelessWidget {
  static const String routeName = '/treinoDetails';
  const TreinoDetails({super.key});

  @override
  Widget build(BuildContext context) {
    print(Text('TreinoDetails!'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina detalhe treino'),
      ),
      body: Container(),
    );
  }
}
