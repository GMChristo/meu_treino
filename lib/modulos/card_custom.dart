import 'package:flutter/material.dart';

class CardCustom extends StatelessWidget {
  // const CardCustom(BuildContext context, {super.key});
  const CardCustom({super.key});

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
                    child: Image.network(
                      'https://4.bp.blogspot.com/-1Fxrred1huU/V1tHYN2ShWI/AAAAAAAAAoI/qKn7HQILGR8DHl1jQ45mpXcM6bt2OscCgCK4B/s1600/Crucifixo-com-aparelho-voador.jpg',
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
              Container(
                // color: Colors.blueGrey,
                width: MediaQuery.of(context).size.width * .55,
                height: 90,
                padding: const EdgeInsets.only(left: 10),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Voador Peitoral',
                      style: TextStyle(fontSize: 20),
                    ),
                    Row(
                      children: [
                        Icon(Icons.replay, size: 15),
                        Text(
                          ' Serie: 3',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.repeat, size: 15),
                        Text(
                          ' Repetições: 12',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.fitness_center_rounded, size: 15),
                        Text(
                          ' Peso: 10KG',
                          style: TextStyle(fontSize: 15),
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
                    onChanged: (bool) {},
                    shape: CircleBorder(),
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
