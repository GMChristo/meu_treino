import 'package:flutter/material.dart';
import 'package:meu_treino/modules/home/home_page.dart';
import 'package:meu_treino/modules/serie/serie_details_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({super.key});

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(), //Ativa o modo escuro
      title: 'Meu Treino',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(), //Seta a aplicação para utilizar o tema escuro
      ),
      // initialRoute: '/',
      routes: {
        // SerieDetailsPage.routeName: (_) => SerieDetailsPage(),
        SerieDetailsPage.routeName: (context) {
          final args = ModalRoute.of(context)?.settings.arguments as Map;
          return SerieDetailsPage(
            nomeSerie: args['nomeSerie'],
          );
        },
      },
      home: const HomePage(),
    );
  }
}
