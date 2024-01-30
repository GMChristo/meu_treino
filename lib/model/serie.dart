// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:meu_treino/model/exercicio.dart';

class Serie {
  // int id;
  String repeticoes;
  String carga;
  String serie;
  // Exercicio exercicio;
  String nome;
  String exemplo;
  bool feito;

  Serie({
    // required this.id,
    required this.repeticoes,
    required this.carga,
    required this.serie,
    // this.exercicio,
    required this.nome,
    required this.exemplo,
  }) : feito = false;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      // 'id': id,
      'repeticoes': repeticoes,
      'carga': carga,
      'serie': serie,
      // 'exercicio': exercicio.toMap(),
      'nome': nome,
      'exemplo': exemplo,
    };
  }

  factory Serie.fromMap(Map<String, dynamic> map) {
    return Serie(
      // id: map['id'] as int,
      repeticoes: map['repeticoes'] as String,
      carga: map['carga'] as String,
      serie: map['serie'] as String,
      // serie: map['serie'] as int,
      // exercicio: Exercicio.fromMap(map['exercicio'] as Map<String, dynamic>),
      nome: map['nome'] as String,
      exemplo: map['exemplo'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Serie.fromJson(String source) => Serie.fromMap(json.decode(source) as Map<String, dynamic>);
}
