import 'dart:io';

void main() {
  int n =0;
  do{
    try{
      print('Digite um numero inteiro: ');
      String? nro = stdin.readLineSync();
      n = int.parse(nro!);
    } on FormatException{
      print('Entrada invalida');
    }
  }while (n != 0);
}
