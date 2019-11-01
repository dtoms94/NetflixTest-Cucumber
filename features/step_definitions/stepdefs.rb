require 'rspec/expectations'

Given("I am on the Google Search Page") do
  @google_search = GoogleSearch.new(@browser)
  @netflix_home = NetflixHome.new(@browser)
  @google_search.visit_google_search
end

Given("I search for {string}") do |string|
  @google_search.enter_search_keyword(string)
  @google_search.click_search_button
end

Given("I see results") do
  @google_search.wait_for_results
end

When("I click the link") do
  @google_search.click_link(@netflix_home.netflix_url)
end

Then("I should see the homepage") do
  @netflix_home.wait_for_page
  expect(@browser.url).to eq(@netflix_home.netflix_url)
  puts "You are on the Netflix homepage: #{@browser.url}"
end