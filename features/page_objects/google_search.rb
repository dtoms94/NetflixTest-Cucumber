require 'page-object'

class GoogleSearch
  include PageObject

  URL = 'https://www.google.com'

  text_field(:search_box, name: 'q')
  button(:search_button, name: 'btnK')
  div(:search_results, id: 'resultStats')
  link(:result_link, href: 'https://www.netflix.com/')

  def visit_google_search
    @browser.goto URL
  end

end