import 'ContaBancaria.dart';

class ContaPoupanca extends ContaBancaria{

ContaPoupanca(super.agencia, super.numero, super.cliente, [super.saldo]);

@override
bool isSaldoSuficiente(double valor){
  if(saldo >= valor){
    return true;
  }
  return false;
}

}