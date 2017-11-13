Dado("que estou em uma task") do
	Login.new.load
	Login.new.log_in("will","will")
	find(:xpath, '//*[@id="grouptab_5"]').click	
	find(:xpath, '//*[@id="toolbar"]/ul/li[7]/span[2]/ul/li[14]/a').click
	find(:xpath, '//*[@id="actionMenuSidebar"]/ul/li[2]/a/div[2]').click
end

Quando("eu editar o campo descricao") do
#	binding.pry
	Edicao.new.campos_edicao("testeinm1","444444444444444")
end

Entao("o registro deve ser atualizado") do
	expect(Edicao.new.desc_txt.text).to eq("444444444444444")
end