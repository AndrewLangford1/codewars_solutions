#[0, 1, 2]
#1,2,2,2


#@TODO
def find_outlier(integers)
  odd = 0
  even = 0
  last = nil
  tie = nil
  current_outlier = nil
  integers.each do |n|
    current_outlier = n if current_outlier.nil?
    is_even = n.even? || n == 0
    even += 1 if is_even
    is_odd = n.odd?
    odd += 1 if is_odd
    if(odd > even )

    if(even > )
    end


    last = n
  end

end
