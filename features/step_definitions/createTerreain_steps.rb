Given("visito la pagina de crear terreno") do
    visit '/createTerrain'
end

Then("Deberia ver un mensaje {string}") do |crearTerrenomsg|
    last_response.body.should =~ /#{crearTerrenomsg}/m
end

