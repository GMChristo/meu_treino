import 'package:flutter/material.dart';
import 'package:meu_treino/model/serie.dart';

class CardCustom extends StatelessWidget {
  Serie serie = Serie(repeticoes: '', carga: '', serie: '', nome: '', exemplo: '');
  // const CardCustom(BuildContext context, {super.key});
  CardCustom(this.serie, {super.key});

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
                    child: Image.asset(serie.exemplo),
                  ),
                ],
              ),
              Container(
                // color: Colors.blueGrey,
                width: MediaQuery.of(context).size.width * .55,
                height: 90,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      // 'Voador Peitoral',
                      serie.nome,
                      style: const TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        const Icon(Icons.replay, size: 15),
                        Text(
                          ' Serie: ${serie.serie}',
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.repeat, size: 15),
                        Text(
                          ' Repetições: ${serie.repeticoes}',
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(Icons.fitness_center_rounded, size: 15),
                        Text(
                          ' Peso: ${serie.carga} KG',
                          style: const TextStyle(fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Checkbox(
                    value: false,
                    onChanged: (_) {},
                    shape: const CircleBorder(),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
