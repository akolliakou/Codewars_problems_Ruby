# 7 kyu

# Alphabet symmetry

# Consider the word "abode". We can see that the letter a is in position 
# 1 and b is in position 2. In the alphabet, a and b are also in positions 
# 1 and 2. Notice also that d and e in abode occupy the positions they would
# occupy in the alphabet, which are positions 4 and 5.
# Given an array of words, return an array of the number of letters that 
# occupy their positions in the alphabet for each word. 

# For example,
# solve(["abode","ABc","xyzD"]) = [4, 3, 1]

# Input will consist of alphabet characters, both uppercase and lowercase. 
# No spaces.

ALPHABET_UP = ("A".."Z").to_a
ALPHABET_DOWN = ("a".."z").to_a
POSITION = (1..26).to_a

ALPHA_DOWN = Hash[ALPHABET_DOWN.zip(POSITION)]
ALPHA_UP = Hash[ALPHABET_UP.zip(POSITION)]

def solve(arr)
  count_arr = []

  arr.each do |word|
    count = 0

    word.chars.each_with_index do |char, idx|
      if idx + 1 == ALPHA_UP[char] || idx + 1 == ALPHA_DOWN[char]
        count += 1
      end
    end

    count_arr << count
  end

  count_arr
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]