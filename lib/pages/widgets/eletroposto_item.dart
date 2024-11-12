import 'package:flutter/material.dart';
import 'package:gs2semestre/model/eletroposto.dart';

class EletropostoItem extends StatelessWidget {
  const EletropostoItem({super.key, required this.eletroposto});
  final Eletroposto eletroposto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  eletroposto.nome.toString(),
                  style: const TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  eletroposto.informacoes.toString(),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  eletroposto.endereco.toString(),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  eletroposto.telefone.toString(),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  eletroposto.conectores.toString(),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
