#TEST TO SEE WHEN CLICKING ON UNDER 13 BUTTON TAKES YOU TO REGISTER WITH GRONW UP EMAIL PAGE
Given("I can access the bbc registration page") do
  bbc_homepage.visit_homepage
  bbc_homepage.click_sign_in_link
  bbc_homepage.click_register_link
  sleep 3
end

When("I click on the Under thirteen button") do
  bbc_sign_up_page.visit_register
  bbc_sign_up_page.click_under_13_button
  sleep 3
end

Then("I should be redirected to the register with grown up email page") do
  bbc_sign_up_page.visit_under_13_page
end



#TEST TO SEE WHEN CLICKING ON OVER 13 BUTTON IM TAKEN TO D.O.B PAGE
When("I click on the over thirteen button") do
  # bbc_sign_up_page.visit_register
  bbc_sign_up_page.click_over_13_button
  sleep 3

end

Then("I should be redirected to the date of birth pages") do
  bbc_sign_up_page.visit_over_13_page
end



#TEST TO SEE IF WHEN ON THE REGISTRATION D.O.B PAGE  ENTERING VALID D.O.B TAKES ME TO NEXT PAGE
Given("I am on the registration date of birth page") do
  bbc_sign_up_page.visit_register
  bbc_sign_up_page.click_over_13_button
  sleep 3
end

And("I input a valid date of birth that is over thirteen years old") do
  bbc_sign_up_page.fill_day_field('20')
  bbc_sign_up_page.fill_month_field('10')
  bbc_sign_up_page.fill_year_field('1990')
  sleep 3
end

When("I click on the continue button") do
  bbc_sign_up_page.click_continue_button
  sleep 3
end

Then("I should be redirected to the registration page") do
  pending # Write code here that turns the phrase above into concrete actions
end





Given("I am on the final registration page") do
  bbc_sign_up_page.visit_register
  bbc_sign_up_page.click_over_13_button
  bbc_sign_up_page.fill_day_field('20')
  bbc_sign_up_page.fill_month_field('10')
  bbc_sign_up_page.fill_year_field('1990')
  bbc_sign_up_page.click_continue_button
end

And("I have entered a valid username") do
  bbc_sign_up_page.fill_email_field('farhaan@farhaan.com')
end

And("I have entered a valid password") do
  bbc_sign_up_page.fill_password_field('Farhaan123')
end

And("I have entered a valid postcode") do
  bbc_sign_up_page.fill_postcode_field('E126QY')
  sleep 3
end

And("I have selected a gender option") do
  bbc_sign_up_page.select_gender_option
  sleep 3
end

And("I have selected an email updates button") do
  bbc_sign_up_page.email_updates_button
  sleep(3)
end

When("I click on the Register button") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should be logged in") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I should be redirected to the homepage") do
  pending # Write code here that turns the phrase above into concrete actions
end

And("I should be able to access my account") do
  pending # Write code here that turns the phrase above into concrete actions
end




When("I input an invalid email") do
  bbc_sign_up_page.fill_email_field('farhaan')
  bbc_sign_up_page.fill_password_field('Farhaan123')
  bbc_sign_up_page.fill_postcode_field('E126QY')
  bbc_sign_up_page.select_gender_option
  bbc_sign_up_page.email_updates_button
  sleep 2
end

Then("I should get a email error message") do
  bbc_sign_up_page.email_error_message
end

When("I input an invalid password") do
  bbc_sign_up_page.fill_email_field('farhaan@farhaan.com')
  bbc_sign_up_page.fill_password_field('123')
  bbc_sign_up_page.fill_postcode_field('E126QY')
  bbc_sign_up_page.select_gender_option
  bbc_sign_up_page.email_updates_button
  sleep 2
end

Then("I should get a password error message") do
  bbc_sign_up_page.password_error_message
end
