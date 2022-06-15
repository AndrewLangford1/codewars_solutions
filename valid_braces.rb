=begin
Write a function that takes a string of braces, and determines if the order of the braces is valid. It should return true if the string is valid, and false if it's invalid.

This Kata is similar to the Valid Parentheses Kata, but introduces new characters: brackets [], and curly braces {}. Thanks to @arnedag for the idea!

All input strings will be nonempty, and will only consist of parentheses, brackets and curly braces: ()[]{}.

What is considered Valid?
A string of braces is considered valid if all braces are matched with the correct brace.

Examples
"(){}[]"   =>  True
"([{}])"   =>  True
"(}"       =>  False
"[(])"     =>  False
"[({})](]" =>  False
=end


def validBraces(braces)
  open_braces = ["[", "{", "("]
  close_braces = ["]", "}", ")"]
  map = Hash[open_braces.zip(close_braces)]
  stack = []
  for i in 0..(braces.length - 1) do
    ch = braces[i]
    if(open_braces.include? ch)
      stack.push(ch)
    else
      return false if(stack.empty?)
      return false if(map[stack.last] != ch)
      stack.pop
    end
  end
  return stack.empty?
end
