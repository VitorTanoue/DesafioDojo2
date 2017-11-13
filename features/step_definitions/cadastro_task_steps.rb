Dado("que estou na pagina home do suiteondemand") do
  Login.new.load
  Login.new.log_in("will","will")
end

Quando("eu fizer o registro {string}") do |subject|
	
	find(:xpath, '//*[@id="grouptab_5"]').click	
	find(:xpath, '//*[@id="toolbar"]/ul/li[7]/span[2]/ul/li[14]/a').click
	find(:xpath, '//*[@id="actionMenuSidebar"]/ul/li[1]/a/div[2]').click

	Cadastro.new.campos_cadastro(subject, "abcde3333dsaas3")
end

Entao("eu terei acesso") do
	#binding.pry
	expect(Cadastro.new.aba1_txt.text).to eq("TASK OVERVIEW")
	expect(Cadastro.new.aba2_txt.text).to eq("OTHER")
end