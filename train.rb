# https://www.codecademy.com/courses/learn-ruby/lessons/a-night-at-the-movies/exercises/nice-work-1

movies = {Matrix: 4, Alien: 4, Emmanuel: 5 }
movies.each {|movie, rating| puts "#{movie}: #{rating}\n"}
puts "What would you like to do?"
choice = gets.chomp
case choice
  when 'add'
    puts 'What movie do you want to add?'
    title = gets.chomp
    puts "What's the rating? (Type a number 0 to 4.)"
    rating = gets.chomp
    if movies[title.to_sym].nil?
      movies[title.to_sym] = rating.to_i
    else 
      puts 'this movie already exist!'
    end
  when 'update'
    puts 'What movie do you want to update?'
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts 'This movie absent from your movies'
    else
       puts "What's the new rating? (Type a number 0 to 4.)"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i     
    end
  when 'display'
    movies.each {|movie, rating| puts "#{movie}: #{rating}"}
  when 'delete'
    puts 'What movie do you want to delete?'
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts 'This movie absent from your movies'
    else
      movies.delete(title.to_sym)
      puts movies
    end
  else
   puts 'Error!'
end

