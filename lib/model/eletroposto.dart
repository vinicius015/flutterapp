class Eletroposto {
  int? _id;
  String? _nome;
  String? _informacoes;
  String? _endereco;
  String? _telefone;
  List<String>? _conectores;

  Eletroposto(
      {int? id,
      String? nome,
      String? informacoes,
      String? endereco,
      String? telefone,
      List<String>? conectores}) {
    if (id != null) {
      this._id = id;
    }
    if (nome != null) {
      this._nome = nome;
    }
    if (informacoes != null) {
      this._informacoes = informacoes;
    }
    if (endereco != null) {
      this._endereco = endereco;
    }
    if (telefone != null) {
      this._telefone = telefone;
    }
    if (conectores != null) {
      this._conectores = conectores;
    }
  }

  int? get id => _id;
  set id(int? id) => _id = id;
  String? get nome => _nome;
  set nome(String? nome) => _nome = nome;
  String? get informacoes => _informacoes;
  set informacoes(String? informacoes) => _informacoes = informacoes;
  String? get endereco => _endereco;
  set endereco(String? endereco) => _endereco = endereco;
  String? get telefone => _telefone;
  set telefone(String? telefone) => _telefone = telefone;
  List<String>? get conectores => _conectores;
  set conectores(List<String>? conectores) => _conectores = conectores;

  Eletroposto.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _nome = json['nome'];
    _informacoes = json['informacoes'];
    _endereco = json['endereco'];
    _telefone = json['telefone'];
    _conectores = json['conectores'].cast<String>();
  }

    Eletroposto.fromJsonList(Map<String, dynamic> json) {
    _id = json['id'];
    _nome = json['nome'];
    _informacoes = json['informacoes'];
    _endereco = json['endereco'];
    _telefone = json['telefone'];
    _conectores = json['conectores'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this._id;
    data['nome'] = this._nome;
    data['informacoes'] = this._informacoes;
    data['endereco'] = this._endereco;
    data['telefone'] = this._telefone;
    data['conectores'] = this._conectores;
    return data;
  }
}