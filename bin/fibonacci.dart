import 'dart:io';

void main() {
  int n = getnumberFibo();
  print('O $nº número na sequência de fibonacci é ${fib(n)} ');
}

int getnumberFibo() {
  print('Infome o número da sequencia de fibonacci que deseja saber:');
  int n = int.parse(stdin.readLineSync().toString());
  print('Número escolhido: $n');
  return n;
}

int fib(int n) {
  if (n < 2) {
    return n;
  } else {
    return fib(n - 1) + fib(n - 2);
  }
}
