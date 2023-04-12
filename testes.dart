import 'dart:io';

var juntas = {
  "Ombro": {
    "Rotação Interna": "Desc Ombro-1",
    "Rotação Externa": "Desc Ombro-2",
    "Flexão": "Desc Ombro-3"
  },
  "Cotovelo": {
    "Cotovelo-1": "Desc Cotovelo-1",
    "Cotovelo-2": "Desc Cotovelo-2",
    "Cotovelo-3": "Desc Cotovelo-3"
  },
  "Punho": {
    "Punho-1": "Desc Punho-1",
    "Punho-2": "Desc Punho-2",
    "Punho-3": "Desc Punho-3"
  },
  "Dedos da mão": {
    "Dedos da mão-1": "Desc Dedos da mão-1",
    "Dedos da mão-2": "Desc Dedos da mão-2",
    "Dedos da mão-3": "Desc Dedos da mão-3"
  },
  "Cervical": {
    "Cervical-1": "Desc Cervaical-1",
    "Cervical-2": "Desc Cervaical-2",
    "Cervical-3": "Desc Cervaical-3"
  },
  "Tórax": {
    "Tórax-1": "Desc Tórax-1",
    "Tórax-2": "Desc Tórax-2",
    "Tórax-3": "Desc Tórax-3"
  },
  "Lombar": {
    "Lombar-1": "Desc Lombar-1",
    "Lombar-2": "Desc Lombar-2",
    "Lombar-3": "Desc Lombar-3"
  },
  "Quadril": {
    "Quadril-1": "Desc Quadril-1",
    "Quadril-2": "Desc Quadril-2",
    "Quadril-3": "Desc Quadril-3"
  },
  "Joelho": {
    "Joelho-1": "Desc Joelho-1",
    "Joelho-2": "Desc Joelho-2",
    "Joelho-3": "Desc Joelho-3"
  },
  "Tornozelo": {
    "Tornozelo-1": "Desc Tornozelo-1",
    "Tornozelo-2": "Desc Tornozelo-2",
    "Tornozelo-3": "Desc Tornozelo-3"
  },
  "Dedos do pé": {
    "Dedos do pé-1": "Desc Dedos do pé-1",
    "Dedos do pé-2": "Desc Dedos do pé-2",
    "Dedos do pé-3": "Desc Dedos do pé-3"
  }
};

int le_comando() {
  String input = stdin.readLineSync() ?? "q";

  //Caso seja inserido 'q' termina o programa
  if (input == "q") {
    print("=== Encerrando Aplicação ===");
    return -1;
  }

  return int.parse(input);
}

void tela1() {
  print("* Escolha uma articulação das opções: \n");
  var k = 1;
  for (var nome_junta in juntas.keys) {
    // var opt = k.toString().padLeft(10, '_');
    // var nome_junta = juntas[k]!.keys.toList()[0];
    print("${k++} - ${nome_junta}");
  }
}

void tela2(String junta) {
  print("* Escolha uma das opções: \n");
  var k = 1;
  for (var nome_junta in juntas[junta]!.keys) {
    // var opt = k.toString().padLeft(10, '_');
    // var nome_junta = juntas[k]!.keys.toList()[0];
    print("${k++} - ${nome_junta}");
  }
}

void tela3(String junta, String movimento) {
  print("* Infos: \n");
  print(juntas[junta]![movimento]);
}

void main() {
//teste de alongamento
//pedir articulação
//pedir tipo de movimento
//pedir amplitude de movimento
//> amplitude limite = laxidão
//< amplitude total = encurtamento
//amplitude >= 1 grau é rigidez importante articular

  var idx = -1;
  var junta_key = "";
  var movimento_key = "";

  while (true) {
    if (junta_key.isEmpty) {
      tela1();
      idx = le_comando();
      junta_key = juntas.keys.toList()[idx - 1];
    }

    if (junta_key.isNotEmpty && movimento_key.isEmpty) {
      tela2(junta_key);
      idx = le_comando();
      movimento_key = juntas[junta_key]!.keys.toList()[idx - 1];
    }

    if (junta_key.isNotEmpty && movimento_key.isNotEmpty) {
      tela3(junta_key, movimento_key);
    }

    print("=== Deseja retornar p/ qual tela (use 'q' p/ sair) ===");
    print("Tela 1 = Juntas e Telas 2 = Mivimentos");
    idx = le_comando();

    switch (idx) {
      case 1:
        junta_key = "";
        movimento_key = "";
        break;
      case 2:
        movimento_key = "";
        break;
      default:
        print("Como nao entendi sua opcao voltando p/ tela 1!");
        junta_key = "";
        movimento_key = "";
        break;
    }

    // print("Você escolheu a opção ${nome_junta}...");
    // print("Detalhes: ${juntas[idx]![nome_junta]!.join('\n')}...");

    // juntas.remove(idx); // Remove elemento da lista
  }
}
