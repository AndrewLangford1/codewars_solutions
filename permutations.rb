def permutations(string)
  string.chars.permutation.to_a.uniq.map{|str| str.join }
end
