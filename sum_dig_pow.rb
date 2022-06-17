def sum_dig_pow(a, b)
  arr = []
  nums = (a..b).to_a
  nums.each do |n|
    digits = n.digits.reverse
    sum = 0
    #for each of the digits, multiply the digit by itself i times
    digits.each_with_index do |d, i|
      power = i + 1
      expression = Array.new(power, d)
      res = (expression.inject(:*))
      sum = sum + res
    end
    if(sum == n )
      arr << n
    end
  end
  return arr
end
