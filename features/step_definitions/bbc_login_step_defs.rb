Given("I access the bbc login page") do
  bbc_homepage.visit_homepage
  bbc_homepage.click_sign_in_link
end

And("I input incorrect username details") do
  bbc_sign_in_page.check_username_field('j')
end

And("I input incorrect password details") do
  bbc_sign_in_page.check_password_field("123")
  sleep 2
end

When("I submit my details") do
  bbc_sign_in_page.click_submit_button
end

Then("I receive and error for not finding the account") do
  bbc_sign_in_page.email_error_message
  bbc_sign_in_page.password_error_message
end
