def duplicate_count(text)
  h = {}
  text.downcase.chars.each do |x|
    if h["#{x}"]
      h["#{x}"] = h["#{x}"] + 1
    else
      h["#{x}"] = 1
    end
  end
  result = h.select{|k,v| v > 1}.size
end


def duplicate_count_refactor(text)
  hsh = Hash.new(0)
  text.downcase.chars.each { |c| hsh[c] += 1 }
  hsh.values.count { |k| k > 1 }
end
