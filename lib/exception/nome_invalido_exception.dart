class NomeInvalidoException implements Exception {
  String error() => "nome invalido";

  @override
  String toString() {
    return "NomeInvalidoException ${error()}";
  }
}