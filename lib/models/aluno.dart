class Alnuo {
  String _nome = "";
  final List<double> _notas = [];

  Alnuo(this._nome);

  void setNome(String nome){
    _nome = nome;
  }

  String getNome(){
    return _nome;
  }

  List<double> getNotas(){
    return _notas;
  }


  void adicionarNota(double nota){
    _notas.add(nota);
  }


  double retornaMedia(){
    var media = _notas.reduce((value, element) => value+element ) / _notas.length;
    return media.isNaN ? 0 : media;
  }

  bool aprovado(double notaCorte){
    return retornaMedia() >= notaCorte;
  }
}