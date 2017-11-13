class Cadastro < SitePrism::Page

	element :subject_field, "input[id='name']"
	element :status_combobox, "select[id='status'] > [value='In Progress']"
	element :priority_combobox, "select[id='priority'] > [value='High']"
	element :description_field, "textarea[id='description']"
	elements :save_button, "input[id='SAVE']"
	element :aba1_txt, "a[id='tab0']"
	element :aba2_txt, "a[id='tab1']"

	def campos_cadastro(nome,descricao)
		subject_field.set(nome)
		status_combobox.click
		priority_combobox.click
		description_field.set(descricao)
		save_button.last.click
	end

end