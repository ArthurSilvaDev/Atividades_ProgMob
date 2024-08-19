import 'dart:io';

void calcularPerimetro(String figura, int va1, [ int va2 = 0, int va3 = 0]){

  double pi = 3.14;
  
  switch(figura){

    case '1':
      int resultado = va1 + va2 + va3;
      imprimirResultados(resultado);
      break;

    case '2':
      var resultado = 2 * pi * va1;
      imprimirResultados(resultado);
      break;

    case '3':
      var resultado = 4 * va1;
      imprimirResultados(resultado);
      break;

    case '4':
      var resultado = 2 * va1 + 2 *va2;
      imprimirResultados(resultado);
      break;
  }

}

int lerValores(String descricao){
    while(true){
      print(' Digite o valor para $descricao:');
      int? valor = int.tryParse(stdin.readLineSync()!);
      if (valor != null && valor > 0){
        return valor;
      } else {
        print ('Valor invalido. Tente novamente!');
      }
    }
}

void imprimirResultados (var resultado) => print('O perimetro da sua figura é: ${resultado}');

void main(List<String> args) {

  String? respostaMenu = '';
   
    
    do{
       print("Qual objeto você gostaria de calcular?\n 1-Triângulo \n 2-Circulo\n 3-Quadrado\n 4-Retangulo\n 0 - Sair do sistema");
      respostaMenu = stdin.readLineSync();

      switch(respostaMenu){

            case '1':
              print("Sua resposta foi 1-Triangulo");
              print('Digite os três lados do triangulo: ');
              var v1 = lerValores('primeiro lado do quadrado');
              var v2 = lerValores('segundo ladro do quadrado');
              var v3 = lerValores('terceiro lado do quadrado');
              calcularPerimetro('1', v1, v2, v3);
              break;
            case '2':
              print("Sua resposta foi 2-Circulo");
              var v1 = lerValores('Raio');
              calcularPerimetro('2', v1, 0, 0);
              break;
            case '3':
              print("Sua resposta foi 3-Quadrado"); 
              var v1 = lerValores('lado do quadrado');
              calcularPerimetro('3', v1, 0 , 0);
              break;
            case '4':
              print("Sua resposta foi 4-Retangulo");
              print('Digite a base e a altura respectivamente: ');
              var v1 = lerValores('base do retangulo');
              var v2 = lerValores('altura do retangulo');
              calcularPerimetro('4', v1, v2, 0);
              break;
            case '0':
              print('O sistema será encerrado! ');
              break;
            default:
              print("Resposta indisponível");
              break;
          }
    } while (respostaMenu != '0' );

    
}