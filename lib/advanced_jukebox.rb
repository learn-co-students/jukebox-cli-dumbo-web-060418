#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
"Go Go GO" => '/Users/danielmicher/Development/labs/jukebox-cli-dumbo-web-060418/audio/Emerald-Park/01.mp3',
"LiberTeens" => '/Users/danielmicher/Development/labs/jukebox-cli-dumbo-web-060418/audio/Emerald-Park/02.mp3',
"Hamburg" =>  '/Users/danielmicher/Development/labs/jukebox-cli-dumbo-web-060418/audio/Emerald-Park/03.mp3',
"Guiding Light" => '/Users/danielmicher/Development/labs/jukebox-cli-dumbo-web-060418/audio/Emerald-Park/04.mp3',
"Wolf" => '/Users/danielmicher/Development/labs/jukebox-cli-dumbo-web-060418/audio/Emerald-Park/05.mp3',
"Blue" => '/Users/danielmicher/Development/labs/jukebox-cli-dumbo-web-060418/audio/Emerald-Park/06.mp3',
"Graduation Failed" => '/Users/danielmicher/Development/labs/jukebox-cli-dumbo-web-060418/audio/Emerald-Park/07.mp3'
}

def help
  #this method should be the same as in jukebox.rb
  help = <<-HELP
I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program
HELP

  puts help
end



def list(my_songs)
  #this method is different! Collect the keys of the my_songs hash and
  #list the songs by name
  my_songs.keys.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end


def play(my_songs)
  #this method is slightly different!
  #you should still ask the user for input and collect their song choice
  #this time, only allow user's to input a song name
  #check to see if the name they give is in fact a key of the my_songs hash
  #if it isn't, tell them their choice is invalid
  #if it is, play the song using the system 'open <file path>' syntax
  #get the file path of the song by looking it up in the my_songs hash
  puts "Please enter a song name or number:"
  song_to_play = gets.chomp
  if (1..9).to_a.include?(song_to_play.to_i)
    puts "Playing #{my_songs[song_to_play.to_i - 1]}"
  elsif my_songs.include?(song_to_play)
    puts "Playing #{song_to_play}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  #this method is the same as in jukebox.rb
  puts "Goodbye"
end

def run(my_songs)
  #this method is the same as in jukebox.rb
  help

  input = ""
  while input
    puts "Please enter a command:"
    input = gets.downcase.strip
    case input
    when 'list'
      list(my_songs)
    when 'play'
      list(my_songs)
      play(my_songs)
    when 'help'
      help
    when 'exit'
      exit_jukebox
      break
    else
      help
    end
  end
end
