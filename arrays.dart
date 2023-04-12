import 'dart:io';

main() {
//    var nome = [];

//    bool condicao = true;

//    while (condicao){
//      print("Digite o nome");
//        String text = stdin.readLineSync() ?? '';
//    if(text == "sair"){
//        print("===Programa Finalizado===");
//        condicao = false;
//    } else {
//        nome.add(text);
//    }
//    print(nome);
//    print("\n");
// }

  var nomes = [
    "Luis Henrique",
    "Nathalia Silva",
    "Herminia Maria",
    "Henrique Melo"
  ];
  nomes.add("Carlos Alberto");
  print(nomes);
  nomes.removeAt(0);
  print(nomes);
}
