# returns either "rock", "paper", or "scissors" using gets.chomp
def user_choose_rps
	puts "What would you like to put in? Rock? Paper? Scissors?" 
	user = gets.chomp
end

# returns either "rock", "paper", or "scissors" using rand()
def comp_choose_rps
	rand_num = rand(3) 
	if rand_num == 1 
	   "rock"
	elsif rand_num == 2 
	   "paper"
	else 
	   "scissors"
	end
end

# returns either "It was a tie!", "You win!", or "The computer wins!"
def get_winner(comp,user)
   if (comp == user) 
       puts "It was a tie!"
   elsif (comp =="rock" && user == "scissors") || (comp =="paper" && user == "rock") || (comp =="scissors" && user == "paper")
       puts "The computer wins!"
   elsif ( comp == "scissors" && user =="rock") || (comp == "rock" && user =="paper") || (comp == "paper" && user =="scissors")
       puts "You win!"
   else 
   	puts "You did not pick either of the choices! Let's try this again." 
   	play_game
   end 
end 

# asking whether the user wants to play again 
def replay 
	puts "Would you like to play again? Please respond with yes or no." 
	answer = gets.chomp 
   	if answer == "yes" 
		puts "Ready?...Go!"
		play_game
	elsif answer == "no"
		puts "Alright then. Thank you for playing! OuO/"
    else 
    	puts "You didn't put neither 'yes' or 'no'. Let me ask you again."
    	replay
    end
end

# puts "The computer chose ____" followed by "You chose ____" followed by the result of #get_winner
def play_game
	#user_choose_rps 
	comp_choice = comp_choose_rps #<-- no need to use this because it's used once 
	user_choice = user_choose_rps  
	puts "The computer chose #{comp_choice}. You chose #{user_choice}." 
	puts get_winner(comp_choice, user_choice) 
	replay 
end

play_game
