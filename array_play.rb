# line allows the file to be run without passing it in to the ruby command line program
#!/usr/bin/env ruby

#Ruby Standard Library that enables erb templates
require 'erb'
#to clean up words
require 'shellwords'

# Create an array of all of the students in our class. Assign it to a variable named "our_class".

our_class = ["Brent", "Chris", "Jon", "Keith", "Luis", "Michael", "Zachary"]

# Find all the students whose first name is less than 5 characters

# create empty container array to store names
short_name_class = []

# evaluate our_class array and select array to "do" to temp variable 'name'
#push to 'short_name_class' array; 'name' variable if 'name' lenght < 5
our_class.each do |name|
  short_name_class << name if name.length < 5
end
puts "Short Name list:"
puts short_name_class

# Turn a sentence into an Array, select the words that are four characters long. Here's your sentence

#create array with sentance
sentence = "Ruby is actually kind of fun once you get used to it."

#turn sentance into array
sentence.split(" ")

#create empty array to return values to
short_words = []

#sentence.split evaluate each word and push to short words
sentence.split.each do |word|
  if word.length == 4
    short_words << word
  end
end


movies = []

movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

#Create an array of movies with budgets of less than 100

movies_under_100 = []

movies.each do |movie|
  if movie[:budget] < 100
    movies_under_100 << movie[:title]
  end
end


#Create another array of movies that starred Leonard DiCaprio.

movies_leo = []

movies.each do |movie|
  if movie[:stars].include? "Leonardo DiCaprio"
    movies_leo <<  movie[:title]
  end

# ********save to a file and close it*********
# create new file and title file
new_file = File.open("./#{movies}.html", "w+")

# push new file, read html file
new_file << ERB.new(File.read("index.html.erb")).result(binding)

# close file
new_file.close
end
