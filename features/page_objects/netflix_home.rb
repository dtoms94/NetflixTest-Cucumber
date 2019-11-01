require 'page-object'

class NetflixHome
  include PageObject

  HOME_URL = 'https://www.netflix.com/'

  g(:netflix_logo, id: 'netflix-logo')

  def netflix_url
    HOME_URL
  end

end