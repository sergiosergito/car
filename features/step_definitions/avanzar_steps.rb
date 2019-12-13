Then("I should see {string}") do |string|
    last_response.body.should =~ /#{string}/m
  end