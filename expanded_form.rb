=begin
Write Number in Expanded Form
You will be given a number and you will need to return it as a string in Expanded Form. For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.
=end
def expanded_form(num)
  digits = num.digits.reverse
  return "#{num}" if (digits.size == 1)
  arr = []
  digits = num.digits.reverse
  digits.each_with_index do |d,i|
    str = ""
    if(d != 0 )
      str << d.to_s
      num_zeroes = ((digits.length) -1) - i
      num_zeroes.times do |op|
        str << "0"
      end
      arr << str
    end
  end
  arr.join(" + ")
end
