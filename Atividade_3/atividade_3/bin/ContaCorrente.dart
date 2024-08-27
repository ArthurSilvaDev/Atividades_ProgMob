import 'ContaBancaria.dart';

class ContaCorrente extends ContaBancaria{

double limite;

ContaCorrente(super.agencia, super.numero, super.cliente, this.limite, [super.saldo]);


  @override
  bool isSaldoSuficiente(double valor){

  if(limite + saldo >= valor){
    return true;
  }
  return false;
}

@override
  String toString() => super.toString() + 'LimiteNegativo: $limite';
  
}