Given ("visito la pagina principal") do
    visit '/'
end

Then("deberia ver un mensaje {string}") do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
end
