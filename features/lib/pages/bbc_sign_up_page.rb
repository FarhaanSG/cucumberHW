require "capybara"

class BBCSignUpPage

  include Capybara::DSL

  REGISTER_PAGE = "https://account.bbc.com/register?nonce=MC9rkxCU-hSxboMhLbsGPYlQwhhKTqPmYkc8&ptrt=https%3A%2F%2Faccount.bbc.com%2Fsignout"
  UNDER_13_BUTTON = '[aria-label="Under 13"]'
  OVER_13_BUTTON = '[aria-label="13 or over"]'
  UNDER_13_PAGE = "https://account.bbc.com/register/details/guardian?nonce=MC9rkxCU-hSxboMhLbsGPYlQwhhKTqPmYkc8&ptrt=https%3A%2F%2Faccount.bbc.com%2Fsignout"
  OVER_13_PAGE = "https://account.bbc.com/register/details/age?nonce=MC9rkxCU-hSxboMhLbsGPYlQwhhKTqPmYkc8&ptrt=https%3A%2F%2Faccount.bbc.com%2Fsignout"
  DAY_FIELD_ID = "#day-input"
  MONTH_FIELD_ID = "#month-input"
  YEAR_FIELD_ID = "#year-input"
  CONTINUE_BUTTON = "#submit-button"
  EMAIL_FIELD = "#user-identifier-input"
  PASSWORD_FIELD = "#password-input"
  POSTCODE_FIELD = "#postcode-input"
  GENDER_OPTION = "#gender-input"
  EMAIL_ERROR_MESSAGE = "#form-message-email"
  PASSWORD_ERROR_MESSAGE = "#form-message-password"
  REGISTER_BUTTON = "#submit-button"


  def visit_register
    visit(REGISTER_PAGE)
  end

  def visit_under_13_page
    visit(UNDER_13_PAGE)
  end

  def visit_over_13_page
    visit(OVER_13_PAGE)
  end

  def get_under_13_button
    find(UNDER_13_BUTTON)
  end

  def click_under_13_button
    get_under_13_button.click
  end

  def get_over_13_button
    find(OVER_13_BUTTON)
  end

  def click_over_13_button
    get_over_13_button.click
  end

  def get_day_field
    find(DAY_FIELD_ID)
  end

  def fill_day_field(day)
    get_day_field.fill_in(with: day)
    # if get_day_field["value"] == day
    #   return true
    # end
    # return false
  end

  def get_month_field
    find(MONTH_FIELD_ID)
  end

  def fill_month_field(month)
    get_month_field.fill_in(with: month)
  end

  def get_year_field
    find(YEAR_FIELD_ID)
  end

  def fill_year_field(year)
    get_year_field.fill_in(with: year)
  end

  def get_continue_button
    find(CONTINUE_BUTTON)
  end

  def click_continue_button
    get_continue_button.click
  end

  def get_email_field
    find(EMAIL_FIELD)
  end

  def fill_email_field(email)
    get_email_field.fill_in(with: email)
  end

  def get_password_field
    find(PASSWORD_FIELD)
  end

  def fill_password_field(password)
    get_password_field.fill_in(with: password)
  end

  def get_postcode_field
    find(POSTCODE_FIELD)
  end

  def fill_postcode_field(postcode)
    get_postcode_field.fill_in(with: postcode)
  end

  def select_gender_option
    find(GENDER_OPTION).find('[value="male"]').select_option()
  end

  def email_updates_button
    find('[for="optOut"]').click
  end

  def email_error_message
    find(EMAIL_ERROR_MESSAGE)
  end

  def password_error_message
    find(PASSWORD_ERROR_MESSAGE)
  end


  # def get_register_link
  #   find(REGISTER_LINK)
  # end
  #
  # def click_register_link
  #   get_register_link.click
  # end

end

# loginpage = BBCSignInPage.new
# loginpage.visit_log_in
# loginpage.check_username_field
