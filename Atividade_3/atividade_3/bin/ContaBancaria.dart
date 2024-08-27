import 'cliente.dart';


abstract class ContaBancaria{
  Cliente? cliente;
  int? agencia;
  int? numero;
  double saldo;



  ContaBancaria(this.agencia, this.numero, this.cliente,[this.saldo=0]);

  bool debitar (double valor){
    if (isSaldoSuficiente(valor)){
      saldo = saldo - valor;
      return true;
    }
    return false;
    
  }

  void creditar (double valor){
    saldo = saldo + valor;
  }

  bool transferir(ContaBancaria outro, double valor){
    if(this.debitar(valor)){
      outro.creditar(valor);
      return true;
    }
    return false;
    
  }

  bool isSaldoSuficiente(double valor);


}