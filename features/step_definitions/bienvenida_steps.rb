Given ("visito la pagina principal") do
    visit '/'
end

Then("deberia ver un mensaje {string}") do |bienvenidamsg|
    last_response.body.should =~ /#{bienvenidamsg}/m
end