puts "Rock, paper, scissors?"
user = gets.chomp
pc = [:rock, :paper, :scissors]

h = {scissors: :paper, rock: :scissors, paper: :rock} 
if h.keys.include? user.to_sym
	if user.to_sym == pc
		puts "PC choice #{pc}, It's a tie"
	elsif h[user.to_sym] == pc
		puts "PC choice #{pc}, You win"
	else 
		puts "PC choice #{pc}, You lose"
	end
else
	puts "Wrong"
end