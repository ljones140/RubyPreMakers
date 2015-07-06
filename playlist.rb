#This Program creates a random playlist based on a music libary
#directory that holds music Music/Artist/Album/track
#Dir.chdir '/Users/lewis/music/iTunes/iTunes Media/'
#File type is hardcoded as MP3 but can be changed

#tracks = Dir['music/*/*/*.{MP3,mp3}']
tracks = Dir['/Users/lewis/music/iTunes/iTunes Media/music/*/*/*.{MP3,mp3}']

counter = 0
playlist = ''

while counter < 10
  playlist << "#{tracks.sample}\n"
  counter  += 1
end

puts playlist

Dir.chdir '/users/lewis/rubyprograms/playlist'
filename = "playlist#{Time.now}.m3u"

File.open filename, 'w' do |f|
  f.write playlist
end


#tracks.each do |track|
#  puts track
#end

#/Users/lewis/music/iTunes/iTunes Media/Music
#puts Dir['/Users/lewis/documents/photostorename/*.{jpg,JPG}']
