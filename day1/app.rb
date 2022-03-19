def count_increases()
  nums = File.readlines('input.txt',  chomp: true)
  #chomp:true removes newline breaks

  total_increases = 0

  (1..nums.length - 1).each do |idx|
    cur = nums[idx].to_i
    prev = nums[idx - 1].to_i

    if cur > prev
      total_increases += 1
    end

  end

  return total_increases
end

 puts count_increases()

