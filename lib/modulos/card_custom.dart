import 'package:flutter/material.dart';
import 'package:meu_treino/model/serie.dart';

class CardCustom extends StatefulWidget {
  Serie serie = Serie(repeticoes: '', carga: '', serie: '', nome: '', exemplo: '');
  // const CardCustom(BuildContext context, {super.key});
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
      // margin: EdgeInsets.all(2),
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
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      // color: Colors.amber[700],
                    ),
                    // child: Image.network(
                    //   // 'https://4.bp.blogspot.com/-1Fxrred1huU/V1tHYN2ShWI/AAAAAAAAAoI/qKn7HQILGR8DHl1jQ45mpXcM6bt2OscCgCK4B/s1600/Crucifixo-com-aparelho-voador.jpg',
                    //   serie.exemplo,
                    //   fit: BoxFit.fill,
                    // ),
                    child: Image.asset(widget.serie.exemplo),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    // color: Colors.blueGrey,
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
                width: MediaQuery.of(context).size.width * .05,
                child: Column(
                  children: [
                    Checkbox(
                      value: widget.serie.feito,
                      checkColor: Colors.white,
                      activeColor: Colors.teal[900],
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
