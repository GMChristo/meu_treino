// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:meu_treino/model/exercicio.dart';

class Serie {
  int id;
  int repeticoes;
  double carga;
  int serie;
  Exercicio exercicio;

  Serie({
    required this.id,
    required this.repeticoes,
    required this.carga,
    required this.serie,
    required this.exercicio,
  });
}
