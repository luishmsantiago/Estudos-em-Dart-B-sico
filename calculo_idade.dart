import 'dart:io';

main(){


//pergunta a idade da pessoa
//se a idade for maior ou igual a 18 
//    ele é maior de idade
// se não for
//    ele não é maior de idade

print("=========== Digite uma idade ===========");
  var input = stdin.readLineSync();
  var idade = int.parse(input ?? "-1"); 

  if(idade >= 50){
    print("melhor idade");
  } else if (idade >= 18){
    print("adulto");
  } else if (idade >= 9) {
    print("adolescente");
  } else if (idade >= 2) {
    print("criança");
  } else {
    print("bebê");
  }
  
}

