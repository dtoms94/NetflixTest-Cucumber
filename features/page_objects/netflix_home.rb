require 'page-object'

class NetflixHome
  include PageObject

  HOME_URL = 'https://www.netflix.com/'
  LOGIN_URL = 'https://www.netflix.com/login'

  g(:netflix_logo, id: 'netflix-logo')
  link(:sign_in_button, xpath: "//div[@class='our-story-header']/a")


  def netflix_url
    HOME_URL
  end

end