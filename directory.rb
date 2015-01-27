def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

def input_students
	puts "please enter the names of the students"
	puts "To finish, just hit return twice"
	# Create an empty array 
	students = []
	# Get the first name 
	name = gets.chomp
	# While the name is not empty, repeat this code
	while !name.empty? do 
	  # Add the student hash to the array
	  students << {:name => name, :cohort => :february}
	  puts "Now we have #{students.length} students"
	  # Get another name from the user
	  name = gets.chomp
	end
	# Return the array of students
	students
end 

# Nothing happens until we call the methods
students = input_students
print_header
print(students)
print_footer(students)