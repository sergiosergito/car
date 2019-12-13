Given("I visited \/dimensions") do
    visit '/dimensions'
end

# Given("is a terrain with a width of {int} and height of {int} I should see {string} in each cell") do |int, int2, string|
#     cell = "#{int}:#{int2}"

#     #initialize(expected) ⇒ HaveXpath

#     last_response.should have_xpath( "//td[@id=\"#{cell}\"]") do |td|
#         td.should contain( string )
#     end  
  
# end

# Given("is a cell with x in {int} and y in {int} I should see {string} in it") do |int, int2, string|
#     cell = "#{int}:#{int2}"

#   last_response.should have_xpath( "//td[@id=\"#{cell}\"]") do |td|
#     td.should contain( string )
#   end
# end