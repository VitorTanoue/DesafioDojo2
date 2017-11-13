class Delecao < SitePrism::Page


	element :search_button, "button[id='searchbutton']"
	element :search_txt, "input[id='query_string']"
	element :submit_button, "button[class='btn btn-default']"
	element :msg_link, :xpath,  "//*[@id='pagecontent']/table/tbody[2]/tr/td[2]/a"
	element :action_button, "li[id='tab-actions']"
	element :delete_button, "input[id='delete_button']"
	element :descricao_field, "textarea[id='description']"
	elements :save_button, "input[id='SAVE']"
	element :desc_txt, "span[id='description']"
	element :filter_button, :xpath,  "(//*[@id='pagination']/td/table/tbody/tr/td[1]/ul[3]/li/a)[1]"
	element :subject_field, "input[id='name_basic']"
	element :search2_button, "input[id='search_form_submit']"

	def campos_delecao(pesquisa)
		sleep 3
		search_button.click
		search_txt.set(pesquisa)
		submit_button.click
		msg_link.click
		action_button.click
		delete_button.click
		Capybara.page.driver.browser.switch_to.alert.accept
		sleep 3
	end

	def confirma_delecao(pesquisa)
		filter_button.click
		subject_field.set(pesquisa)
		search2_button.click
	end

end