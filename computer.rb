# https://www.codecademy.com/courses/learn-ruby/lessons/virtual-computer/exercises/you-did-it-1

class Computer

  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{@username} create file #{filename} at #{@files[filename]}"
  end
  
  def self.get_users
    @@users
  end
end

my_computer = Computer.new('work_123', 12345)
my_computer.create('Resume')

