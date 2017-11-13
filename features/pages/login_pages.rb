class Login < SitePrism::Page

	set_url "https://demo.suiteondemand.com"

	element :login_field, "input[id='user_name']"
	element :senha_field, "input[id='user_password']"
	element :login_button, "input[id='bigbutton']"

	def log_in(username,password)
		login_field.set(username)
		senha_field.set(password)
		login_button.click
	end

end
