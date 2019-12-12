Given("I have opened \/dimensions") do
    visit '/dimensions'
end

Then("width in x should be {int}") do |int|
    def terrain
        @terrain ||= Terrain.new
    end
    terrain.initializate(5,0)
    expect(terrain.get_DimX()).to eq (int)
  end