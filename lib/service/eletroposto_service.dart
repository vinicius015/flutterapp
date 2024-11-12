import 'dart:convert';

import 'package:gs2semestre/model/eletroposto.dart';
import 'package:http/http.dart' as http;


const baseUrl = 'https://eletropostos.azurewebsites.net/api/eletroposto';

class EletropostoService {
  Future<List<Eletroposto>> getEletropostos() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      final List eletropostosFromJson = jsonDecode(response.body);
      final eletropostosList = eletropostosFromJson.map((e) => Eletroposto.fromJson(e)).toList();

      return eletropostosList;
    }

    throw Exception('falha ao carregar eletropostos');
  }
}