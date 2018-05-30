songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name = gets.chomp

puts say_hello(users_name)
=end

def help
  puts "I accept the following commands:"
  puts "   - help : displays this help message"
  puts "   - list : displays a list of songs you can play"
  puts "   - play : lets you choose a song to play"
  puts "   - exit : exits this program"
end

def list(arr)
  songlist = []
  arr.each_with_index do |el, idx|
    puts "#{idx+1}. #{el}"
  end
end

def play(arr)
  puts "Please enter a song name or number:"
  response = gets.chomp

  if (1..9).to_a.include?(response.to_i)
    puts "Playing #{arr[response.to_i-1]}"
  elsif arr.include?(response)
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(arr)
  help
  user_response = ""
  while user_response
    puts "Please enter a command:"
    user_response = gets.chomp
    if user_response == "list"
      list(arr)
    elsif user_response == "play"
      play(arr)
    elsif user_response == "help"
      help
    else
      exit_jukebox
      break
    end
  end
end
