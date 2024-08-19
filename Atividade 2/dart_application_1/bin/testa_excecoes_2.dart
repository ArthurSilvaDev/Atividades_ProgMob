double dividir(var numerador, var denominador) {  
   if(denominador==0) {   
      throw UnsupportedError ("Divisão por zero!");  
   } else if (denominador is String){
     throw FormatException ("O denominador não é um número");
   } else if (denominador == null){
    throw ArgumentError('O denominador não pode ser nulo');
   }
   else {
     return (numerador/denominador);
   }  
} 

void main() {   
   try {  
     int a = 5;
     int b = 0;
     String c = 'c';
     print ("Resultado = ${dividir(a,b)}");  
   } catch(e) {   
      print(e);   
   }   
} 
