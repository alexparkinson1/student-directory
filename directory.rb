# Let's put all the students into an array
students = [
   "Christopher Ward",
   "Rizwan Ali",
   "Vanessa Virgitti",
   "Tommaso Bratto",
   "Joe Newman",
   "Loris Fochesato",
   "Guido Vita Finzi",
   "Tom Coakes",
   "Kevin Lanzon",
   "Sebastien Pires",
   "Yannick Brunner",
   "Costas Sarris",
   "Diego Romero",
   "Erik Griffn",
   "Thomas Strothjohann",
   "Alex Parkinson",
   "Carrie Christenson",
   "Julian Veling",
   "Edward Brown",
   "Meads Chalcroft",
   "Sean Haughton",
   "Paul Fitzgerald",
   "Phil Brockwell",
   "Kate Beavis"
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------"
end

def print(names)
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

# Nothing happens until we call the methods
print_header
print(students)
print_footer(students)