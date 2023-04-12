import 'dart:io';

main(){
    calculoIMC();
}
//pegar peso 
//pegar altura
//realizar cálculo
//retornar imc

calculoIMC(){
//programa que calcula IMC

print("===Digite seu peso===");
var textPeso = stdin.readLineSync(); 
var peso = int.parse (textPeso ?? "-1");

print("===Digite sua altura===");
var textAltura = stdin.readLineSync();
var altura = double.parse (textAltura ?? "-1");

double imc = calcIMCExpr(peso, altura);
imprimirResultado(imc);
}
//função que recebe o peso e altura e retorna o IMC
double calcIMCExpr(int peso, double altura){
    return peso / (altura * altura);

}

//imprime o resultado baseado no IMC passado por parâmetros
imprimirResultado(double imc){
    
    print ("====================");


if (imc < 18.5) {
    print("Abaixo do peso");
 } else if (imc > 18.5 && imc < 24.9){
        print("Peso normal");
 } else if (imc > 25 && imc < 29.9){
    print("Sobrepeso");
 } else if (imc > 30 && imc < 34.9){
    print("Obesidade grau 1");
 } else if (imc > 35 && imc < 39.9){
    print("Obesidade grau 2");
 } else {
    print("Obesidade grau 3");
 } 
}
