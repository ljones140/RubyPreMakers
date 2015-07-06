toast = Proc.new do
  puts "cheers"
end

toast.call
toast.call
toast.call

do_you_like = Proc.new do |good_stuff|
  puts "I really like #{good_stuff}"
end

do_you_like.call "monkies"
do_you_like.call "mookies"
do_you_like.call "spookies"
