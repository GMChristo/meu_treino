// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meu_treino/model/serie.dart';
import 'package:meu_treino/modulos/card_custom.dart';

class TreinoDetailsPage extends StatefulWidget {
  static const String routeName = '/treinoDetails';
  const TreinoDetailsPage({super.key});

  @override
  State<TreinoDetailsPage> createState() => _TreinoDetailsPageState();
}

class _TreinoDetailsPageState extends State<TreinoDetailsPage> {
  var series = <Serie>[];
  final String nomeSerie = 'serieA';
  bool treinoFinalizado = false;

  @override
  void initState() {
    super.initState();
    _loadSeries();
  }

  Future<void> _loadSeries() async {
    final seriesJson = await rootBundle.loadString('assets/serieA/$nomeSerie.json');
    setState(() {
      var serieList = jsonDecode(seriesJson);
      series = serieList.map<Serie>((s) => Serie.fromMap(s)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('TreinoDetails!');
    print('Largura page ${MediaQuery.of(context).size.width}');
    return Scaffold(
      appBar: AppBar(
        // title: const Text('Pagina detalhe treino'),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Detalhes do treino',
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                Text(
                  nomeSerie,
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  treinoFinalizado = !treinoFinalizado;
                });
              },
              icon: ClipOval(
                child: Container(
                  // color: context.primaryColor.withAlpha(20),
                  padding: const EdgeInsets.all(8),
                  child: Icon(
                    !treinoFinalizado ? Icons.check_box_outline_blank : Icons.check_box_outlined,
                    size: 20,
                    // color: context.primaryColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.grey,
            thickness: 1,
          );
        },
        itemCount: series.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          Serie s = series[index];
          // return CardCustom(serie: s);
          return CardCustom(s);
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
