puts "Rock, paper, scissors?"
user = gets.chomp
randnumber = 1 + rand(2)
if randnumber == 1
	pc = "rock"
elsif randnumber == 2
	pc = "paper"
elsif randnumber == 3
	pc = "scissors"
end

h = {scissors: :paper, rock: :scissors, paper: :rock} 
if h.keys.include? user.to_sym
	if user.to_sym == pc.to_sym
		puts "PC choice #{pc}, It's a tie"
	elsif h[user.to_sym] == pc.to_sym
		puts "PC choice #{pc}, You win"
	else 
		puts "PC choice #{pc}, You lose"
	end
else
	puts "Wrong"
end