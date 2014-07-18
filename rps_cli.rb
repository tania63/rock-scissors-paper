choices = ["rock", "paper", "scissors"]
 
puts "Enter one of: rock, paper, scissors"
print "> "
player_choice = gets.chomp
 
if not choices.include? player_choice
puts "Your choice, '#{player_choice}', is invalid"
exit
end
 
puts "The computer is thinking..."
 
frames = ['/', '-', '\\', '|']
10.times do |frame_number|
print frames[frame_number % frames.length]
print "\r"
sleep 0.1
end
 
computer_choice = choices.sample
puts "The computer's choice is: #{computer_choice}"
 
game_rules = {
"rock" => "scissors",
"scissors" => "paper",
"paper" => "rock",
}
 
if player_choice == computer_choice
puts "It's a tie"
elsif player_choice == game_rules[computer_choice]
puts "You lose"
else
puts "You win"
end
 
puts "Goodbye, nice playing with you!"