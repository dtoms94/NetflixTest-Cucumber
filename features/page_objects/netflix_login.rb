require 'page-object'

class NetflixLogin
  include PageObject

  LOGIN_URL = 'https://www.netflix.com/login'

  form(:login_form, xpath: "//form[@class='login-form']")

  def login_url
    LOGIN_URL
  end

end