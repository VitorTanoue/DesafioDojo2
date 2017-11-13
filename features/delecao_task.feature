#language: pt
#utf-8

@deletar
Funcionalidade: Deletar Task
Eu como usuário
Quero deletar uma task no suiteondemand
Para atualizar o registro

	Cenario: Usuário deleta uma task
		Dado que estou visualizando uma task
		Quando eu clicar no botão de deletar 
		Entao o registro deve ser excluido  
