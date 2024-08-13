import 'dart:io';

void calcularPerimetro(String figura, va1, [va2, va3]){

  double pi = 3.14;
  int v1 = int.parse(va1);
  int v2 = va2;
  int v3 = va3;
  if (va2 != ''){
    v2 = int.parse(va2);
  }
  if (v3 != ''){
    v3 = int.parse(va3);
  }
  
  switch(figura){

    case '1':
      var resultado = v1 + v2 + v3;
      print('O perimetro do seu Triangulo é $resultado');
      break;

    case '2':
      var resultado = 2 * pi * v1;
      print('O perimetro do seu Circulo é $resultado');
      break;

    case '3':
      var resultado = 4 * v1;
      print ('O perimetro do seu Quadrado é $resultado');
      break;

    case '4':
      var resultado = 2 * v1 + 2 *v2;
      print('O perimetro do seu retangulo é $resultado');
      break;
  }

}


void main(List<String> args) {
    print("Qual objeto você gostaria de calcular?\n 1-Triângulo \n 2-Circulo\n 3-Quadrado\n 4-Retangulo");
    String? respostaMenu = stdin.readLineSync();
    
    switch(respostaMenu){

      case '1':
        print("Sua resposta foi 1-Triangulo");
        print('Digite os três lados do triangulo: ');
        var v1 = stdin.readLineSync();
        var v2 = stdin.readLineSync();
        var v3 = stdin.readLineSync();
        calcularPerimetro('1', v1, v2, v3);
        break;
      case '2':
        print("Sua resposta foi 2-Circulo");
        print('Digite o Raio do círculo');
        var v1 = stdin.readLineSync();
        calcularPerimetro('2', v1);
        break;
      case '3':
        print("Sua resposta foi 3-Quadrado");
        print('Digite o tamanho do lado do quadrado: ');
        var v1 = stdin.readLineSync();
        calcularPerimetro('3', v1);
        break;
      case '4':
        print("Sua resposta foi 4-Retangulo");
        print('Digite a base e a altura respectivamente: ');
        var v1 = stdin.readLineSync();
        var v2 = stdin.readLineSync();
        calcularPerimetro('4', v1, v2);
        break;
      default:
        print("Resposta indisponível");
        break;
    }
}