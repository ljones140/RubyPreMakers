#This Program creates a random playlist based on a music libary
#directory that holds music Music/Artist/Album/track
Dir.chdir '/Users/lewis/music/iTunes/iTunes Media/music'
#File type is hardcoded as MP3 but can be changed
#tracks = Dir['music/*/*/*.{MP3,mp3}']

def music_mixup tracklist
  artists = []
  albums  = []
  songs   = []
  tracklist.each do |track|
    split_track = track.split '/'
    artists.push(split_track[0])
    albums .push(split_track[1])
    songs  .push(split_track[2])
  end
  mixed_tracks = []
  while mixed_tracks.length < artists.length
    mixed_tracks << ("#{artists.sample}/#{albums.sample}/#{songs.sample}")
  end
  return mixed_tracks
end

tracks = Dir['*/*/*.{MP3,mp3}']

counter = 0
playlist = []

while counter < 10
  playlist.push("#{tracks.sample}")
  counter += 1
end

Dir.chdir '/users/lewis/rubyprograms/playlist'
filename = "playlist#{Time.now}.txt"

File.open filename, 'w' do |f|
  music_mixup(playlist).each do |track|
    f.write "#{track}\n"
  end
end


