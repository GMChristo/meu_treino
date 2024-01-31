import 'package:flutter/material.dart';
import 'package:meu_treino/model/serie.dart';

class CardCustom extends StatefulWidget {
  Serie serie = Serie(repeticoes: '', carga: '', serie: '', nome: '', exemplo: '');
  CardCustom(this.serie, {super.key});

  @override
  State<CardCustom> createState() => _CardCustomState();
}

class _CardCustomState extends State<CardCustom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[700],
      ),
      width: MediaQuery.of(context).size.width,
      height: 110,
      padding: const EdgeInsets.all(5),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .25,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(widget.serie.exemplo),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .60,
                    height: 100,
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          // 'Voador Peitoral',
                          widget.serie.nome,
                          style: const TextStyle(fontSize: 18),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.replay, size: 15),
                            Text(
                              ' Serie: ${widget.serie.serie}',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.repeat, size: 15),
                            Text(
                              ' Repetições: ${widget.serie.repeticoes}',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.fitness_center_rounded, size: 15),
                            Text(
                              ' Peso: ${widget.serie.carga} KG',
                              style: const TextStyle(fontSize: 14),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width * .07,
                child: Column(
                  children: [
                    Switch(
                      activeColor: Colors.blueGrey[50],
                      value: widget.serie.feito,
                      onChanged: (bool value) {
                        setState(() {
                          widget.serie.feito = value;
                        });
                      },
                    ),
                    Checkbox(
                      value: widget.serie.feito,
                      checkColor: Colors.grey[800],
                      activeColor: Colors.blueGrey[50],
                      onChanged: (_) {
                        setState(() {
                          widget.serie.feito = !widget.serie.feito;
                        });
                      },
                      shape: const CircleBorder(),
                    ),
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
