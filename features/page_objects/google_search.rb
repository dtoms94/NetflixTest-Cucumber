require 'page-object'

class GoogleSearch
  include PageObject

  URL = 'https://www.google.com'

  text_field(:search_box, name: 'q')
  button(:search_button, name: 'btnK')
  div(:search_results, id: 'resultStats')

  def visit_google_search
    @browser.goto URL
  end

  def enter_search_keyword(keyword)
    self.search_box = keyword
  end

  def click_search_button
    self.search_button
  end

  def wait_for_results
    self.search_results_element.wait_until(&:present?)
  end

  def click_link(link)
    @browser.a(href: link).click
  end

end