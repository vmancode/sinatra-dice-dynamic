require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end



get("/dice/:dicenum/:sidenum") do

  pp params

  @num_dice = params.fetch("dicenum").to_i
  @num_side = params.fetch("sidenum").to_i

  @rolls = []

  @num_dice.times do
    die = rand(1..@num_side)

    @rolls.push(die)
  end

  erb(:flexible)
end
