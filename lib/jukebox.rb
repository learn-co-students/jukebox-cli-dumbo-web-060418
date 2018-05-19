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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a lists of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program "
end

def list(songs)
  songs.each.with_index(1) do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or a number: "
  users_input = gets.chomp

  if (1..9).to_a.include?(users_input.to_i)
    puts "Playing #{songs[users_input.to_i - 1]}"
  elsif songs.include?(users_input)
    puts "Playing #{users_input}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  input = ""
  while input
    puts "Please enter a command:"
    input = gets.strip
  case input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      exit_jukebox
  break
    else
      help
  end
 end
end