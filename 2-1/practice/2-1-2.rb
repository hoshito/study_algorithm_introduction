# 挿入ソート(降順)
arr = gets.chomp.split(" ").map(&:to_i)
puts "before: #{arr}"

(1..(arr.length-1)).each do |j|
  key = arr[j]
  # keyをソート済みの列に挿入
  i = j - 1
  while i >= 0 && arr[i] < key do
    arr[i + 1] = arr[i]
    i -= 1
  end
  arr[i + 1] = key
  puts "#{j}: #{arr}"
end

puts "after: #{arr}"
