import 'package:flutter/material.dart';
import 'package:meu_treino/model/serie.dart';

class CardCustom extends StatelessWidget {
  Serie serie = Serie(repeticoes: '', carga: '', serie: '', nome: '', exemplo: '');
  final bool efetuado;
  final ValueNotifier<bool> efetuadoVN;

  CardCustom(
    this.serie, {
    super.key,
    this.efetuado = false,
  }) : efetuadoVN = ValueNotifier(efetuado);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: efetuadoVN,
      builder: (_, efetuado, child) {
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
                        child: Image.asset(serie.exemplo),
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
                              serie.nome,
                              style: const TextStyle(fontSize: 18),
                            ),
                            Row(
                              children: [
                                const Icon(Icons.replay, size: 15),
                                Text(
                                  ' Serie: ${serie.serie}',
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.repeat, size: 15),
                                Text(
                                  ' Repetições: ${serie.repeticoes}',
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.fitness_center_rounded, size: 15),
                                Text(
                                  ' Peso: ${serie.carga} KG',
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
                        Checkbox(
                          value: serie.feito,
                          checkColor: Colors.grey[800],
                          activeColor: Colors.blueGrey[50],
                          onChanged: (_) {
                            serie.feito = !serie.feito;
                            efetuadoVN.value = !efetuado;
                          },
                          shape: const CircleBorder(),
                        ),

                        /// Forma de utilização com IconButton
                        // IconButton(
                        //   onPressed: () {
                        //     efetuadoVN.value = !efetuado;
                        //   },
                        //   icon: Icon(
                        //     !efetuado ? Icons.check_box_outline_blank_rounded : Icons.check_box_outlined,
                        //     size: 15,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
