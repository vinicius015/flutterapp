import 'package:flutter/material.dart';
import 'package:gs2semestre/model/eletroposto.dart';
import 'package:gs2semestre/pages/widgets/eletroposto_item.dart';
import 'package:gs2semestre/provider/eletroposto_provider.dart';
import 'package:gs2semestre/service/eletroposto_service.dart';
import 'package:provider/provider.dart';

class EletropostoListPage extends StatefulWidget {
  const EletropostoListPage({super.key});

  @override
  State<EletropostoListPage> createState() => _EletropostoListPageState();
}

class _EletropostoListPageState extends State<EletropostoListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Eletropostos'),
      ),
      body: Consumer<EletropostoProvider>(
        builder: (context, eletropostoProvider, _) {
          if (eletropostoProvider.isLoading) {
            return Center(
              child: CircularProgressIndicator(
                color: Color(1),
              ),
            );
          }

          return ListView.builder(
              itemCount: eletropostoProvider.eletropostos.length,
              itemBuilder: (context, index) {
                var eletroposto = eletropostoProvider.eletropostos[index];
                return EletropostoItem(eletroposto: eletroposto);
              },
            );
        },
      ),
    );
  }
}
