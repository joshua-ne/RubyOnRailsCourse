def method (s1)
  puts s1
  yield "i'm the yielding"
end

method ("I'm s1") do |s2|
  puts "I'm inside the block given"
  puts s2
end