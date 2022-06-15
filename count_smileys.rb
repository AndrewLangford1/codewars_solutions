=begin
Given an array (arr) as an argument complete the function countSmileys that should return the total number of smiling faces.

Rules for a smiling face:

Each smiley face must contain a valid pair of eyes. Eyes can be marked as : or ;
A smiley face can have a nose but it does not have to. Valid characters for a nose are - or ~
Every smiling face must have a smiling mouth that should be marked with either ) or D
No additional characters are allowed except for those mentioned.

Valid smiley face examples: :) :D ;-D :~)
Invalid smiley faces: ;( :> :} :]

Example
countSmileys([':)', ';(', ';}', ':-D']);       // should return 2;
countSmileys([';D', ':-(', ':-)', ';~)']);     // should return 3;
countSmileys([';]', ':[', ';*', ':$', ';-D']); // should return 1;
=end


#brute force
def count_smileys(arr)
  return 0 if arr.empty?
  valid_eyes = [':', ';']
  valid_nose = ['-', '~']
  valid_mouth = [')', 'D']
  count = 0
  arr.each do |face|
    next if (face.size != 2) or (face.size != 3)
    if(face.size == 2)
      if(valid_eyes.include?(face[0]) and valid_mouth.include?(face[1]))
        count = count + 1
      end
    end
    if(face.size == 3)
      if(valid_eyes.include?(face[0]) and valid_nose.include?(face[1]) and valid_mouth.include?(face[2]))
        count = count + 1
      end
    end
  end
  return count
end

#using a regexp instead
def count_smileys_regexp(arr)
  arr.count { |e| e =~ /(:|;){1}(-|~)?(\)|D)/ }
end
