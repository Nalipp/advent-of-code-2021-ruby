#part 2

def count_increases_of_three()
  nums = File.readlines('input.txt',  chomp: true)
  #chomp:true removes newline breaks

  total_increases = 0 
  prev_sum = 0 
  cur_sum = 0 

  (0..2).each do |idx|
    cur_sum += nums[idx].to_i
  end

  (3..nums.length - 1).each do |idx|
    new_val = nums[idx].to_i 
    old_val = nums[idx - 3].to_i 

    cur_sum = (cur_sum + new_val) - old_val 

    if cur_sum > prev_sum then total_increases += 1 end
    prev_sum = cur_sum
  end

  return total_increases
end

puts count_increases_of_three()







