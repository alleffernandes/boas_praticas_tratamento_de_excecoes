
import 'package:meu_app_ex/exception/nome_invalido_exception.dart';
import 'package:meu_app_ex/models/aluno.dart';
import 'package:meu_app_ex/models/console_utils.dart';

void execute(){
  print("Bem vindo ao sistemas de notas");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno:");
  try {
  if(nome.trim()== ""){
    throw NomeInvalidoException();
    }    
  } on NomeInvalidoException {
    nome = "padrão";
    print(NomeInvalidoException);
  }
  catch (e) {
    print(e);  
  }
  var aluno = Alnuo(nome);
  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida("Digite a nota o S para Sair", "S");
    if(nota != null){
      aluno.adicionarNota(nota);
    }
  } while (nota != null);
  print(aluno.getNotas());
  print("A Média do aluno ${aluno.getNome()} foi: ${aluno.retornaMedia()}");
  if(aluno.aprovado(7)){
  print("O aluno ${aluno.getNome()} foi aprovado");
  }else{
  print("O aluno ${aluno.getNome()} foi reprovado");
  }
}