class Edicao < SitePrism::Page

	element :search_button, "button[id='searchbutton']"
	element :search_txt, "input[id='query_string']"
	element :submit_button, "button[class='btn btn-default']"
	element :msg_link, :xpath,  "//*[@id='pagecontent']/table/tbody[2]/tr/td[2]/a"
	element :action_button, "li[id='tab-actions']"
	element :edit_button, "input[id='edit_button']"
	element :descricao_field, "textarea[id='description']"
	elements :save_button, "input[id='SAVE']"
	element :desc_txt, "span[id='description']"

	def campos_edicao(pesquisa,descricao)
		sleep 2

		search_button.click
		search_txt.set(pesquisa)
		submit_button.click
		msg_link.click
		action_button.click
		edit_button.click
		descricao_field.set(descricao)
		save_button.last.click
	end

end