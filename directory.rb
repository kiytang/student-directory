def print_header
	puts "The students of my cohort at MA"
	puts "----------"
end

# print student name that begin with "A or a"
def print(students)
	filter = /\Aa/i
	students.each_with_index do |student, index|
		if student [:name] =~ filter
			puts "#{index+1}: #{student[:name]} in the #{student[:cohort].capitalize} cohort"
		else
			puts "#{index+1}: No name beginning with 'A' or 'a' matched"
		end
	end
end	
# def print(students)
# 	students.each_with_index do|student, index| 
# 		puts "#{index+1}: #{student[:name]} in the #{student[:cohort].capitalize} cohort"
# 	end
# end

def print_footer(names)
	puts "overall, we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :november}
		puts "Now we have #{students.length} students"
		# get another name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end

students = input_students
print_header
print(students)
print_footer(students)




























