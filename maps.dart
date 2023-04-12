import 'dart:io';

List<Map<String, dynamic>> cadastros = [];

main() {
  bool condicao = true;
  print("\x1B[2J\x1B[0;0H");
  while (condicao) {
    print("=== DIGITE UM COMANDO ===");
    String comando = stdin.readLineSync() ?? "q";
    if (comando == "sair") {
      print("===Programa Finalizado");
      condicao = false;
    } else if (comando == "imprimir") {
      print(cadastros);
    } else if (comando == "cadastro") {
      print("\x1B[2J\x1B[0;0H");
      cadastrar();
    } else {
      print("esse comando não existe");
    }
  }
}

cadastrar() {
  Map<String, dynamic> cadastro = {};
  print("=== Digite seu nome ===");
  cadastro["Nome"] = stdin.readLineSync() ?? "q";

  print("=== Digite sua idade ===");
  cadastro["idade"] = stdin.readLineSync() ?? "q";

  print("=== Digite a sua cidade ===");
  cadastro["cidade"] = stdin.readLineSync() ?? "q";

  print("=== Digite seu estado ===");
  cadastro["estad"] = stdin.readLineSync() ?? "q";
  cadastros.add(cadastro);
}
