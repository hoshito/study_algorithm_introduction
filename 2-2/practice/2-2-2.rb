# 選択ソート
arr = gets.chomp.split(" ").map(&:to_i)
puts "before: #{arr}"

(0..(arr.length-2)).each do |i|
  min = arr[i]
  min_j = i
  # 最小を見つける
  ((i+1)..(arr.length-1)).each do |j|
    if arr[j] < min then
      min = arr[j]
      min_j = j
    end
  end
  # arr[i]とarr[min_j]を交換
  tmp = arr[i]
  arr[i] = min
  arr[min_j] = tmp
  puts "#{i}: #{arr}"
end

puts "after: #{arr}"

