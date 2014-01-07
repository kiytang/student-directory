	# let's put all students into an array
students = [
	["Dr. Hannibal Lecter", :dicembre],
	["Darth Vader", :dicembre],
	["Nurse Ratched", :dicembre],
	["Michael Corleone", :dicembre],
	["Alex De Large", :dicembre],
	["The Alien", :dicembre],
	["Terminator", :dicembre],
	["Freddy Kruger", :dicembre],
	["The Joker", :dicembre],
	["Mr T", :dicembre]
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

def print(students)
	students.each do |student|
		puts "#{student[0]} (#{student[1]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

# nothing happens until we call the methods
print_header
print(students)
print_footer(students)




















