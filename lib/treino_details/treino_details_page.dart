import 'package:flutter/material.dart';
import 'package:meu_treino/modulos/card_custom.dart';

class TreinoDetailsPage extends StatelessWidget {
  static const String routeName = '/treinoDetails';
  const TreinoDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    print(Text('TreinoDetails!'));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagina detalhe treino'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.grey,
            thickness: 1,
          );
        },
        itemCount: 5,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return const CardCustom();
        },
      ),

      /// opção utilizando SingleChild
      // body: const SingleChildScrollView(
      //   padding: EdgeInsets.all(10),
      //   child: Column(
      //     children: [
      //       CardCustom(),
      //       CardCustom(),
      //       CardCustom(),
      //     ],
      //   ),
      // ),
    );
  }
}
