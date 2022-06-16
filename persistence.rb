def persistence(n)
  digits = n.digits
  if digits.size == 1
    return 0
  else
    n = digits.inject(:*)
    return 1 + persistence(n)
  end
end
