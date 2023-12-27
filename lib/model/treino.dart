// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meu_treino/model/serie.dart';

class Treino {
  int id;
  String nome;
  DateTime dataInicio;
  DateTime dataExec;
  // List<Serie> series;

  Treino({
    required this.id,
    required this.nome,
    required this.dataInicio,
    required this.dataExec,
    // required this.series,
  });
}
