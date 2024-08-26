class Cliente{
  String? nome;
  final String? cpf;

  Cliente({this.nome, this.cpf});

  String toString()=> 'Nome = $nome - CPF = $cpf';

  String? informaCPF() => cpf;

  bool operator == (Object other){
    return other is Cliente && cpf == other.cpf;
  }
  
  @override
  int get hashCode => cpf.hashCode;
  

}
