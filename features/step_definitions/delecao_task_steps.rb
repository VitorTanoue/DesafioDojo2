Dado("que estou visualizando uma task") do
	Login.new.load
	Login.new.log_in("will","will")
	find(:xpath, '//*[@id="grouptab_5"]').click	
	find(:xpath, '//*[@id="toolbar"]/ul/li[7]/span[2]/ul/li[14]/a').click
	find(:xpath, '//*[@id="actionMenuSidebar"]/ul/li[2]/a/div[2]').click
end

Quando("eu clicar no botão de deletar") do
	Delecao.new.campos_delecao("testeinm1")
end

Entao("o registro deve ser excluido") do
	Delecao.new.confirma_delecao("testeinm1")
#	binding.pry
	assert_text('No results found for "testeinm1"')
end
