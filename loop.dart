import 'dart:io';

main(){

 //   for(int x = 0; x < 10; x = x++){
 //   print("rodou $x");
 //   }

    bool condicao = true;
    int x = 0;
    
    while(condicao){
        print("===Escreva um Texto===");
        String text = stdin.readLineSync() ?? '';
        if(text== "sair"){
            condicao = false;
            print("===Programa finalizado===");
        } else{
            print("===Você digitou: $text ===");
        }
    }


}