=begin
Your task is to construct a building which will be a pile of n cubes. The cube at the bottom will have a volume of n^3, the cube above will have volume of (n-1)^3 and so on until the top which will have a volume of 1^3.

You are given the total volume m of the building. Being given m can you find the number n of cubes you will have to build?

The parameter of the function findNb (find_nb, find-nb, findNb, ...) will be an integer m and you have to return the integer n such as n^3 + (n-1)^3 + ... + 1^3 = m if such a n exists or -1 if there is no such n.

Examples:
findNb(1071225) --> 45

findNb(91716553919377) --> -1
=end


def find_nb(m)
  return 0 if m == 0
  current_mass = 0
  nb = 0
  while(nb != -1) do
    nb = nb + 1
    added_mass = nb * nb * nb
    current_mass = current_mass + added_mass
    return nb if( current_mass == m)
    if(current_mass > m)
      nb = -1
    end
  end
  return nb
end
