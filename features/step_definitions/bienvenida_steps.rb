Given ("visito la pagina principal") do
    visit '/'
end

Then("deberia ver un mensaje {string}") do |message|
    last_response.body.should =~ /#{message}/m
end
  
Then("Deberia ver un mensaje {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
end