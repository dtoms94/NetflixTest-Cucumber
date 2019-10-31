require "watir"
require "rspec/expectations"

Given("I am on the Google Search Page") do
  @browser ||= Watir::Browser.new
  @browser.goto "https://www.google.com"
end

Given("I search for {string}") do |string|
  @browser.text_field(name: "q").set string
  @browser.button(name: "btnK").click
end

Given("I see results") do
  @browser.div(id: "resultStats").wait_until(&:present?)
end

When("I click the link") do
  @browser.a(href: "https://www.netflix.com/").click
end

Then("I should see the homepage") do
  @browser.g(id: "netflix-logo").wait_until(&:present?)
  @browser.url == "https://www.netflix.com/"
  puts "You are on the Netflix homepage: #{@browser.url}"
  @browser.close
end