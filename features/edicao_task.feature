#language: pt
#utf-8

@editar
Funcionalidade: Editar Task
Eu como usuário
Quero editar uma task no suiteondemand
Para atualizar o registro

	Cenario: Usuário edita uma task
		Dado que estou em uma task
		Quando eu editar o campo descricao 
		Entao o registro deve ser atualizado  

