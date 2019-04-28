require 'pry'
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

def song_titles(songs)
  songs.collect do  
    |song|
    song.split(" - ")[1]
  end
end

def help()
  puts "I accept the following commands:"
  puts "- help : displays this help"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you  choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each do
    |song|
    num = 1
    puts num.to_s << ". " << song
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  choice = gets.chomp
  choice = choice >= "1" && choice <= "9" ? song_titles(songs)[choice.to_i - 1] : choice
  puts choice == song_titles(songs) ? "Playing " << choice : "Invalid input, please try again"
end









