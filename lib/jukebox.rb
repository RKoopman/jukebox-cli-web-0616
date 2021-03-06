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
    puts "I accept the following commands:
    - help : displays this help message
    - list : displays a list of songs you can play
    - play : lets you choose a song to play
    - exit : exits this program"
end

def play (songs)
  puts "Please enter a song name or number:"
  user_song_choice = gets.chomp
  if (1..9).include?(user_song_choice.to_i)
    puts "Playing #{songs[user_song_choice.to_i-1]}"
  elsif songs.include?(user_song_choice)
    puts "Playing #{user_song_choice}"
  else
    puts "Invalid input, please try again"
  end
end

def list (songs)
  songs.each_with_index do |track, index|
    puts "#{index+1} #{track}"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts ' Please enter a command:'
  exit_jukebox
end
