#first and second side
@a = 0
@b = 0
#Hypotenuse
@h = 0

def welcome
	puts 'welcome to hypotenuse calulator!'
	user_Input
end

def user_Input
	puts 'please input your first side:'
	@a = gets.strip.to_f

	puts 'please input your second side:'
	@b = gets.strip.to_f

	puts "Your first side is #{@a} and your second side is #{@b}"
	calulation
end

def calulation
	@h = Math.hypot(@a, @b)
	puts "The hypotenuse of the sides of #{@a} and #{@b} is #{@h}"
	again
end

def again
	puts "do you want to try the program again? (Y/N)"
	user_answer = gets.strip.upcase
	if user_answer == "Y" 
		user_Input
	elsif user_answer == "N"
		exit.(0)
	else 
		puts "I am sorry i didn't get that"
		again
	end
end

while true
	welcome
end
