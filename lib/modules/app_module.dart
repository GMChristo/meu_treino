import 'package:flutter/material.dart';
import 'package:meu_treino/modules/app_widget.dart';
import 'package:provider/provider.dart';

class AppModule extends StatelessWidget {
  const AppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        //lista de providers não pode ser vazia
        Provider(
          create: (_) => {},
        ),
      ],
      child: const AppWidget(),
    );
  }
}
