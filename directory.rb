#variable outside all methods, so that it were accessible in all methods.
@students = []

def print_header
	puts "The students of my cohort at MA"
	puts "----------"
end

# Modify your program to only print the students whose name is shorter than 12 characters
def print_students_list
	@students.each_with_index do |student, index|
		if student[:name].length <= 12
			puts "#{index+1}: #{student[:name]} was born on #{student[:date_of_birth]} enjoys #{student[:hobbies]} born in #{student[:birth_country]} and is part of the #{student[:cohort].capitalize} cohort"
		else
			puts "#{index+1}: Name consists in excees or 12 characters-too lazy to print-out"
		end
	end
end	

def print_footer
	puts "overall, we have #{@students.length} great students"
end

# Our code only works with the student name and cohort. 
# Add more information: hobbies, country of birth, height, etc.
def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	
	# create an empty array
	# students = []
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
		@students << {:name => name, :cohort => :november, :date_of_birth => date_of_birth, :hobbies => hobbies, :birth_country => birth_country}
		puts "Now we have #{@students.length} students"
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
	# students
end

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "3. Save the students"
	puts "4. Load the list from students.csv"
	puts "9. Exit" # 9 because we will be adding more items later
end

def show_students
	print_header
	print_students_list
	print_footer
end

def save_students
	#open the file for writing
	file = File.open("students.csv", "w")
	#iterate over the array of students
	@students.each do |student|
		student_data = [student[:name], student[:cohort], student[:date_of_birth]] #, student[:hobbies], student[:birth_country]]
		csv_line = student_data.join(",")
		file.puts csv_line  
	end
	file.close
end

def add_student(name,cohort)
	@students << {:name => name, :cohort => cohort.to_sym}
end

def load_students(filename = "students.csv")
	file = File.open("students.csv", "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		add_student(name, cohort)
	end
	file.close
end

# extract 'case statement' to a new method
def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "3"
		save_students
	when "4"
		load_students
	when "9"
		exit
	else
		puts "I don't know what you mean, try again"
	end
end


# adding a interactive menu
def interactive_menu
		loop do
			print_menu
			process(gets.chomp)
		end
end

interactive_menu


#  --------------------------------------------  #
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



























