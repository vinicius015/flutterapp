import 'package:flutter/material.dart';
import 'package:gs2semestre/pages/eletroposto_list_page.dart';
import 'package:gs2semestre/provider/eletroposto_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
          create: (_) => EletropostoProvider()..listEletropostos())
    ],
    child: const MyApp()
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eletropostos',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const EletropostoListPage(),
    );
  }
}
