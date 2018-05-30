require "pry"

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(songs)
songs.each_with_index do |val, index|
puts "#{index += 1}. #{val}"
end
end

def play(songs)
puts "Please enter a song name or number:"
selection = gets.chomp
songNumbers = []
songs.each_with_index do |val, index|
  songNumbers << index += 1
end
toInteger = selection.to_i
if songNumbers.include?(toInteger)
  song = songs[toInteger - 1]
  puts "Playing" + song
elsif songs.include?(selection)
  puts "Playing" + selection
else
  puts "Invalid input, please try again"
end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
help
puts "Please enter a command:"
response = gets.chomp
if response == "help"
  help
  run
elsif response == "list"
  list(songs)
elsif response == "play"
  play(songs)
elsif response == "exit"
  exit_jukebox
else run
end
end

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
