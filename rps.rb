# returns either "rock", "paper", or "scissors" using rand()
def comp_choose_rps
	rand_num = rand(3) 
	
end

# returns either "rock", "paper", or "scissors" using gets.chomp
def user_choose_rps
	
end

# returns either "It was a tie!", "You win!", or "The computer wins!"
def get_winner(comp,user)
   if (comp =="rock" && user == "scissors") || (comp =="paper" && user == "rock") || (comp =="scissors" && user == "rock")
       return "The computer wins!"
   elsif (comp =="rock" && user == "rock") || (comp =="scissors" && user == "scissors") || (comp =="paper" && user == "paper") 
       return "It was a tie!"
   elsif (comp =="rock" && user == " ") || (comp =="paper" && user == " ") || (comp =="scissors" && user == " ") 
       return "What happen? Choose one already!"
   else 
       return "You win!"
   end
end

# puts "The computer chose ____" followed by "You chose ____" followed by the result of #get_winner
def play_game
	
end

play_game
