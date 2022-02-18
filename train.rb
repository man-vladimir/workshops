# https://www.codecademy.com/courses/learn-ruby/lessons/a-night-at-the-movies/exercises/nice-work-1

def gets_to_sym
  gets.chomp.to_sym
end

def gets_to_i
  gets.chomp.to_i
end

def print_all_movies(movies)
  movies.each { |movie, rating| puts "#{movie}: #{rating}"}
end

def my_movies
  movies = { Matrix: 4, Alien: 4, Emmanuel: 5 }
  puts 'What would you like to do?'
  choice = gets.chomp

  case choice
    when 'add'
      puts 'What movie do you want to add?'
      title = gets_to_sym
      return puts 'this movie already exist!' if movies[title]

      puts "What's the rating? (Type a number 0 to 4.)"
      movies[title] = gets_to_i
    when 'update'
      puts 'What movie do you want to update?'
      title = gets_to_sym
      return puts 'This movie absent from your movies' unless movies[title]

      puts "What's the new rating? (Type a number 0 to 4.)"
      movies[title] = gets_to_i 
    when 'display'
      print_all_movies(movies)
    when 'delete'
      puts 'What movie do you want to delete?'
      title = gets_to_sym
      return puts 'This movie absent from your movies' unless movies[title]
      movies.delete(title)
      print_all_movies(movies)
    else puts 'Error!'
  end
end

my_movies()
