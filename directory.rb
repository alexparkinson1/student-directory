# Let's put all the students into an array
students = [
   {:name => "Christopher Ward", :cohort => :february},
   {:name => "Rizwan Ali", :cohort => :february},
   {:name => "Vanessa Virgitti", :cohort => :february},
   {:name => "Tommaso Bratto", :cohort => :february},
   {:name => "Joe Newman", :cohort => :february},
   {:name => "Loris Fochesato", :cohort => :february},
   {:name => "Guido Vita Finzi", :cohort => :february},
   {:name => "Tom Coakes", :cohort => :february},
   {:name => "Kevin Lanzon", :cohort => :february},
   {:name => "Sebastien Pires", :cohort => :february},
   {:name => "Yannick Brunner", :cohort => :february},
   {:name => "Costas Sarris", :cohort => :february},
   {:name => "Diego Romero", :cohort => :february},
   {:name => "Erik Griffn", :cohort => :february},
   {:name => "Thomas Strothjohann", :cohort => :february},
   {:name => "Alex Parkinson", :cohort => :february},
   {:name => "Carrie Christenson", :cohort => :february},
   {:name => "Julian Veling", :cohort => :february},
   {:name => "Edward Brown", :cohort => :february},
   {:name => "Meads Chalcroft", :cohort => :february},
   {:name => "Sean Haughton", :cohort => :february},
   {:name => "Paul Fitzgerald", :cohort => :february},
   {:name => "Phil Brockwell", :cohort => :february},
   {:name => "Kate Beavis", :cohort => :february}
]

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

# Nothing happens until we call the methods
print_header
print(students)
print_footer(students)