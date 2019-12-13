Given("I have opened \/carPositionSet") do
    visit "/carPositionSet"
  end
  
  Then("my car is at x equal {int} and y equal {int} I should see it at {int}, {int} coordenate") do |int, int2, int3, int4|
    def robot
        @robot ||= Robot.new
    end
    robot.initializate(int,int2,"Norte")
    expect((robot.get_posx() == int3 ) && (robot.get_posy() == int4)).to eq (true)
  end