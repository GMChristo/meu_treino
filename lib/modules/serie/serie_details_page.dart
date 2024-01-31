// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meu_treino/model/serie.dart';
import 'package:meu_treino/widget/card_custom.dart';

class SerieDetailsPage extends StatefulWidget {
  static const String routeName = '/serieDetails';
  const SerieDetailsPage({super.key});

  @override
  State<SerieDetailsPage> createState() => _SerieDetailsPageState();
}

class _SerieDetailsPageState extends State<SerieDetailsPage> {
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
    print('SerieDetailsPage!');
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

/*
class SerieDetailsPage extends StatelessWidget {
  static const String routeName = '/serieDetails';
  final bool efetuado;
  final ValueNotifier<bool> efetuadoVN;
  var series = <Serie>[];
  final String nomeSerie = 'serieA';
  bool treinoFinalizado = false;

  
  Future<void> _loadSeries() async {
    final seriesJson = await rootBundle.loadString('assets/serieA/$nomeSerie.json');
      var serieList = jsonDecode(seriesJson);
      series = serieList.map<Serie>((s) => Serie.fromMap(s)).toList();
  }

  SerieDetailsPage({
    super.key,
    this.efetuado = false,
  }) : efetuadoVN = ValueNotifier(efetuado);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: efetuadoVN,
        builder: (_, efetuado, child) {
          return Scaffold(
            appBar: AppBar(
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
                      treinoFinalizado = !treinoFinalizado;
                    },
                    icon: ClipOval(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Icon(
                          !treinoFinalizado ? Icons.check_box_outline_blank : Icons.check_box_outlined,
                          size: 20,
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
                return CardCustom(s);
              },
            ),
          );
        });
  }
}
*/
