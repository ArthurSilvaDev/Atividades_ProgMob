import 'ContaBancaria.dart';
import 'ContaCorrente.dart';
import 'ContaPoupanca.dart';
import 'cliente.dart';

void main() {
  Cliente cli = Cliente(cpf: '1234-00', nome: 'Ana');

  ContaCorrente cb = ContaCorrente(100, 1234, cli, 100, 1500);
  print(cb);
  print('Debitou 1000 ? ${cb.debitar(1000)}');
  print('Debitou 700 ? ${cb.debitar(700)}');
  print('Saldo da conta corrente = ${cb.saldo}');

  ContaPoupanca cb2 = ContaPoupanca(100, 1234, cli, 5);
  print(cb2);
  cb2.creditar(1000);
  print('Saldo da poupanca = ${cb2.saldo}');

  cb.transferir(cb2, 400);
  print('Saldo da conta corrente = ${cb.saldo}');
  print('Saldo da poupanca = ${cb2.saldo}');
}
