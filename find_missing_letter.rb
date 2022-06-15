=begin
#Find the missing letter
Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.
You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.
Example:
['a','b','c','d','f'] -> 'e' ['O','Q','R','S'] -> 'P'
["a","b","c","d","f"] -> "e"
["O","Q","R","S"] -> "P"
=end

def find_missing_letter(arr)
  upper = ('A'..'Z').to_a
  lower = ('a'..'z').to_a
  is_upper = /[A-Z]/.match?(arr.first)
  if(is_upper)
    start = upper.find_index(arr.first)
    finish = upper.find_index(arr.last)
    subarray = upper.slice(start,finish)
    result = (subarray - arr)[0]
  else
    start = lower.find_index(arr.first)
    finish = lower.find_index(arr.last)
    subarray = lower.slice(start,finish)
    result = (subarray - arr)[0]
  end
end


def find_missing_letter2(arr)
  ((arr.first..arr.last).to_a - arr).first
end
