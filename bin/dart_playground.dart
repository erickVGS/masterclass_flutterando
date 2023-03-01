// DESAFIO MASTERCLASS

// O (IMC) índice de massa corporal é baseado na altura e peso do individuo.
// O calculo é representado por Dividir o peso pela Altura ao quadradro²

// Cria uma função que realize o calculo de IMC.
import 'dart:io';

void main() {
  final String name = getName();

  final double peso = getPeso();

  final double altura = getAltura();

  double imc = calcImc(peso: peso, altura: altura);

  print('Nome: $name');
  print('Altura: $altura');
  print('Peso: $peso');
  print('Seu imc é: ${imc.toStringAsFixed(2)}');

  if (imc < 18.5) {
    print('Abaixo do peso');
  } else if (imc >= 18.5 && imc <= 24.9) {
    print('Peso normal');
  } else if (imc >= 25 && imc <= 29.9) {
    print('Excesso de peso');
  } else if (imc >= 30 && imc <= 34.9) {
    print('Obesidade classe 1');
  } else if (imc >= 35 && imc <= 39.9) {
    print('Obesidade classe 2');
  } else if (imc >= 40) {
    print('Obesidade classe 3');
  } else {}
}

String getName() {
  print('Digite seu nome:');
  final String? name = stdin.readLineSync();

  if (name == null) {
    return 'Fulano';
  } else {
    return name;
  }
}

double getPeso() {
  print('Informe seu peso: ');
  final double peso = double.parse(stdin.readLineSync().toString());

  if (peso == null) {
    return 0.0;
  } else {
    return peso;
  }
}

double getAltura() {
  print('Informe sua altura: ');
  final double altura = double.parse(stdin.readLineSync().toString());

  if (altura == null) {
    return 0.0;
  } else {
    return altura;
  }
}

double calcImc({required double peso, required double altura}) {
  return peso / (altura * altura);
}
