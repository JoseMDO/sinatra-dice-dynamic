require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end


get("/dice/:number_of_dice/:number_of_sides") do 
  

  @rolls = []

  params.fetch("number_of_dice").to_i.times do 
    die = rand(1..params.fetch("number_of_sides").to_i)
    @rolls.push(die)
  end

  erb(:flexible)
end
