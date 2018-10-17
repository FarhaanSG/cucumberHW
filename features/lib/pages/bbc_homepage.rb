class BBCHomepage
  include Capybara::DSL

  HOMEPAGE_URL = "https://www.bbc.co.uk/"
  SIGN_IN_LINK_ID = "#idcta-link"
  REGISTER_LINK_CLASS = ".link.link--primary"

  def visit_homepage
    visit(HOMEPAGE_URL)
  end

  def get_sign_in_link
    find(SIGN_IN_LINK_ID)
  end

  def click_sign_in_link
    get_sign_in_link.click
  end

  def get_register_link
    find(REGISTER_LINK_CLASS)
  end

  def click_register_link
    get_register_link.click
  end

end
