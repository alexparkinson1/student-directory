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
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
	# Get the first name 
	name = STDIN.gets.chomp
	# While the name is not empty, repeat this code
	while !name.empty? do 
	  # Add the student hash to the array
	  add_student(name, :november)
	  puts "Now we have #{@students.length} students"
	  # Get another name from the user
	  name = STDIN.gets.chomp
	end
end

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
		puts "I don't know what you mean by that, please try again."
	end
end

def interactive_menu
	loop do 
		print_menu
		process(STDIN.gets.chomp)
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
	puts "3. Save the list to students.csv"
	puts "4. Load the list from students.csv"
	puts "9. Exit."
end

def save_students
	# Open file for writing
	file = File.open("students.csv", "w")
	# Iterate over the array of students
	@students.each do |student|
		student_data = [student[:name], student[:cohort]]
		csv_line = student_data.join(",")
		file.puts csv_line
	end
	file.close
end

def add_student(name, cohort)
	@students << {:name => name, :cohort => cohort.to_sym}
end


def try_load_students
	filename = ARGV.first # first argument from the command line.
	return if filename.nil? # get out of the method if it isnt given
	if File.exists?(filename) # if it exists
		load_students(filename)
		puts "Loaded #{@students.length} from #{filename}"
	else # If it doesnt exist..
		puts "Sorry, #{filename} doesnt exist."
		exit # Quit
	end
end


def load_students(filename = "students.csv")
	file = File.open(filename, "r")
	file.readlines.each do |line|
		name, cohort = line.chomp.split(',')
		add_student(name, cohort)
	end
	file.close
end

try_load_students
interactive_menu