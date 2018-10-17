require "capybara"

class BBCSignInPage

  include Capybara::DSL

  LOG_IN_PAGE = "https://account.bbc.com/signin"
  USERNAME_FIELD_ID = "#user-identifier-input"
  PASSWORD_FIELD_ID = "#password-input"
  SUBMIT_BUTTON_ID = "#submit-button"
  USERNAME_ERROR_ID = "#form-message-username"
  PASSWORD_ERROR_ID = "#form-message-password"


  def visit_log_in
    visit(LOG_IN_PAGE)
  end

  def get_username_field
    find(USERNAME_FIELD_ID)
  end

  def check_username_field(username)
    get_username_field.fill_in(with: username)
  end

  def get_password_field
    find(PASSWORD_FIELD_ID)
  end

  def check_password_field(password)
    get_password_field.fill_in(with: password)
  end

  def get_submit_button
    find(SUBMIT_BUTTON_ID)
  end

  def click_submit_button
    get_submit_button.click
  end

  def email_error_message
    find(USERNAME_ERROR_ID)
  end

  def password_error_message
    find(PASSWORD_ERROR_ID)
  end



end

# loginpage = BBCSignInPage.new
# loginpage.visit_log_in
# loginpage.check_username_field
