=begin

Instructions

Complete the method/function so that it converts dash/underscore delimited words into camel casing. The first word within the output should be capitalized only if the original word was capitalized (known as Upper Camel Case, also often referred to as Pascal case).

Examples
"the-stealth-warrior" gets converted to "theStealthWarrior"
"The_Stealth_Warrior" gets converted to "TheStealthWarrior"

=end


def to_camel_case(str)
  return "" if str.empty?
  camel_string =""
  words = str.split(/[_,-]+/)
  camel_string << words.first
  words = words.drop(1)
  camel_string << words.map(&:capitalize).join
  camel_string
end
