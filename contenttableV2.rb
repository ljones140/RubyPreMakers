line_width = 60
puts ('Table of Contents'.center(line_width))
puts ''
count = 0
chapters = [['Getting Started', '1'], ['monkies', '10'], ['Dinsours', '20']]
chapters.each do |(chapter, page)|
  count += 1
  puts ('Chapter: ' + count.to_s + ' ' + chapter.ljust(line_width/2) + 'Page '.rjust(line_width/2)) + page
end
