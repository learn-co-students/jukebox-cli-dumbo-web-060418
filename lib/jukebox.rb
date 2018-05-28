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

def say_hello(name)
"Hi #{name}"
end

def help 
 puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(ar)
  ar.each_with_index do |song, index| 
    puts "#{index+1}. #{song}"
  end
end

def play(ar)
  puts "Please enter a song name or number:"
  song_or_num = gets.chomp
  valid_input = nil
  ar.each_with_index do |song, index|
  if song_or_num == song
    puts "Playing #{song}"
    valid_input = 1
    elsif song_or_num.to_i == index+1
    puts "Playing #{song}"
  valid_input = 1
  end
  end
 if !valid_input
   puts "Invalid input, please try again"
 end
 end
 
 def exit_jukebox
   puts "Goodbye"
end

def run(ar)
  help
  puts "Please enter a command:"
  users_input = gets.chomp
  loop do 
  puts "Please enter a command:"
  users_input = gets.chomp
    case users_input
    when "list"
      list(ar)
      when "play"
        play(ar)
        when "help"
          help
          when "exit"
            exit_jukebox
          end
          break if users_input == "exit"
        end
end
      
      

#puts "Enter your name:"
#users_name = gets.chomp 
#puts say_hello(users_name)