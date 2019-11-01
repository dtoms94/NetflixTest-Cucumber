require 'rspec/expectations'

World PageObject::PageFactory

Given("I am on the Google Search Page") do
  @google_search = GoogleSearch.new(@browser)
  @netflix_home = NetflixHome.new(@browser)
  on_page(GoogleSearch).visit_google_search
end

Given("I search for {string}") do |string|
  on_page(GoogleSearch).search_box = string
  on_page(GoogleSearch).search_button
end

Given("I see results") do
  on_page(GoogleSearch).search_results_element.wait_until(&:present?)
end

When("I click the link") do
  on_page(GoogleSearch).result_link
end

Then("I should see the homepage") do
  on_page(NetflixHome).netflix_logo_element.wait_until(&:present?)
  expect(@browser.url).to eq(@netflix_home.netflix_url)
  puts "You are on the Netflix homepage: #{@browser.url}"
end