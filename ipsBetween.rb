def ipsBetween(start, ending)
  (IPAddr.new(start)..IPAddr.new(ending)).to_a.size - 1
end
