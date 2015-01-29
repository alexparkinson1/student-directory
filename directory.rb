def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

@students = []

def print_students_list
	@students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer
	puts "Overall, we have #{@students.length} great students."
end

def input_students
	puts "please enter the names of the students"
	puts "To finish, just hit return twice"
	# Get the first name 
	name = gets.chomp
	# While the name is not empty, repeat this code
	while !name.empty? do 
	  # Add the student hash to the array
	  @students << {:name => name, :cohort => :february}
	  puts "Now we have #{@students.length} students"
	  # Get another name from the user
	  name = gets.chomp
	end
end

def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students
	when "9"
		exit
	else
		puts "I don't know what you mean by that, please try again."
	end
end

def interactive_menu
	loop do 
		print_menu
		process(gets.chomp)
	end
end

def show_students
	print_header
	print_students_list
	print_footer
end

def print_menu
	puts "1. Input the students."
	puts "2. Show the students."
	puts "9. Exit."
end


interactive_menu