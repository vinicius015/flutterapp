import 'package:flutter/material.dart';
import 'package:gs2semestre/model/eletroposto.dart';
import 'package:gs2semestre/service/eletroposto_service.dart';

class EletropostoProvider with ChangeNotifier {

  final EletropostoService _service = EletropostoService();

  List<Eletroposto> _eletropostos = [];
  List<Eletroposto> get eletropostos => _eletropostos;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> listEletropostos() async {
    _isLoading = true;
    notifyListeners();

    try {
      _eletropostos = await _service.getEletropostos();
    } catch (e) {
      print(e);
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}