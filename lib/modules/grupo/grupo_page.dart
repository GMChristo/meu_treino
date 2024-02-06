import 'package:flutter/material.dart';
import 'package:meu_treino/modules/serie/serie_details_page.dart';

class GrupoPage extends StatelessWidget {
  static List _cardsSeries = ['Serie A', 'Serie B', 'Serie C'];

  const GrupoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cardsSeries.length,
      itemBuilder: (context, index) {
        final cardSerie = _cardsSeries[index];
        return Cartao(nomeSerie: cardSerie);
      },
    );
  }
}

class Cartao extends StatelessWidget {
  final String nomeSerie;
  const Cartao({required this.nomeSerie, super.key});

  @override
  Widget build(BuildContext context) {
    print('GrupoPage - Cartao');
    // return ElevatedButton(
    // onPressed: () {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(SerieDetailsPage.routeName, arguments: {'nomeSerie': nomeSerie.replaceAll(new RegExp(r"\s+\b|\b\s"), "").toLowerCase()});

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('$nomeSerie - Costas'),
                const Text('Realizado em: 23/12/2023'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
