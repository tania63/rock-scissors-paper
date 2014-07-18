require 'sinatra'
 
get '/play/:choice' do
@player_choice = params[:choice]
 
choices = ["rock", "paper", "scissors"]
 
if @player_choice == "random"
@player_choice = choices.sample
end
 
if not choices.include? @player_choice
next "Your choice, '#{@player_choice}', is invalid"
end
 
@computer_choice = choices.sample
 
game_rules = {
"rock" => "scissors",
"scissors" => "paper",
"paper" => "rock",
}
 
if @player_choice == @computer_choice
@result = "It's a tie"
elsif @player_choice == game_rules[@computer_choice]
@result = "You lose"
else
@result = "You win"
end
 
erb :play
end