#language: pt
#utf-8

@cadastrar
Funcionalidade: Cadastrar Conta
	Eu como usuário
	Quero cadastrar uma conta no suiteondemand
	Para ter acesso

	Contexto: Usuário acessa pagina home
		Dado que estou na pagina home do suiteondemand

	Esquema do Cenário: Cadastro de usuário no site Demoqa
		Quando eu fizer o registro "<subject>"
		Entao eu terei acesso

		Exemplos:
			| subject   |
			| testeinm1 | 
			| teste2222 |
