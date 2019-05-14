# 挿入ソート
arr = gets.chomp.split(" ").map(&:to_i)
puts "before: #{arr}"

(1..(arr.length-1)).each do |j|
  key = arr[j]
  puts "j=#{j}, key=#{key}"
  # keyをソート済みの列に挿入
  i = j - 1
  while i >= 0 && arr[i] > key do
    puts "i=#{i}, arr[#{i + 1}]=#{arr[i + 1]}, arr[#{i}]=#{arr[i]}"
    arr[i + 1] = arr[i]
    i -= 1
  end
  arr[i + 1] = key
  puts "#{arr}"
  puts "------"
end

puts "after: #{arr}"
