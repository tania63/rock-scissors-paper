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

if user == pc
	puts "It's a tie"
elsif user == "paper"
	if pc == "rock"
		puts "PC choice #{pc}, You win"
	elsif pc == "scissors"
		puts "PC choice #{pc}, You lose"
	end
elsif user == "scissors"
	if pc == "paper"
		puts "PC choice #{pc}, You win"
	elsif pc == "rock"
		puts "PC choice #{pc}, You lose"
	end
elsif user == "rock"
	if pc == "scissors"
		puts "PC choice #{pc}, You win"
	elsif pc == "paper"
		puts "PC choice #{pc}, You lose"
	end
else
	puts "Wrong"
end