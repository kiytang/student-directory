def print_header
	puts "The students of my cohort at MA"
	puts "----------"
end

# Modify your program to only print the students whose name is shorter than 12 characters
def print(students)
	students.each_with_index do |student, index|
		if student[:name].length <= 12
			puts "#{index+1}: #{student[:name]} was born on #{student[:date_of_birth]} enjoys #{student[:hobbies]} born in #{student[:birth_country]} and is part of the #{student[:cohort].capitalize} cohort"
		else
			puts "#{index+1}: Name consists in excees or 12 characters-too lazy to print-out"
		end
	end
end	

def print_footer(names)
	puts "overall, we have #{names.length} great students"
end

# Our code only works with the student name and cohort. 
# Add more information: hobbies, country of birth, height, etc.
def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	puts "Please enter the student's D.O.B"
	date_of_birth = gets.chomp
	puts "Please enter the student's hobbies"
	hobbies = gets.chomp
	puts "Please enter country of birth"
	birth_country = gets.chomp

	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :november, :date_of_birth => date_of_birth, :hobbies => hobbies, :birth_country => birth_country}
		puts "Now we have #{students.length} students"
		# get another name from the user
		puts "Please enter the names of the students"
		name = gets.chomp
		puts "Please enter the student's D.O.B"
		date_of_birth = gets.chomp
		puts "Please enter student's hobbies"
		hobbies = gets.chomp
		puts "Please enter country of birth"
		birth_country = gets.chomp
	end
	# return the array of students
	students
end

# adding a interactive menu
def interactive_menu
	students = []
	loop do
		# 1. print the menu and ask the user what to do
		puts "1. Input the students"
		puts "2. Show the students"
		puts "9. Exit" #9 because we will eb adding more items later
		# 2. read the input and save it into a variable
		selection = gets.chomp
		# 3. do what the user has asked
		case selection
		when "1"
			students = input_students
		when "2"
			print_header
			print(students)
			print_footer(students)
		when "9"
			exit # this will cause the program to terminate
		else
			puts "I don't know what you meant, try again"
		end
	end
end

# Rewrite the each() method that prints all students using "while" 
# or "until" control flow methods.

# def print(students)


# def print(students)
# 	students.each_with_index do|student, index| 
# 		puts "#{index+1}: #{student[:name]} in the #{student[:cohort].capitalize} cohort"
# 	end
# end


# print student name that begin with "A or a"
# def print(students)
# 	filter = /\Aa/i
# 	students.each_with_index do |student, index|
# 		if student[:name].length =~ filter
# 			puts "#{index+1}: #{student[:name]} in the #{student[:cohort].capitalize} cohort"
# 		else
# 			puts "#{index+1}: No name beginning with 'A' or 'a' matched"
# 		end
# 	end
# end	



























