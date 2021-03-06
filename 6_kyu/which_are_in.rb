# 6 kyu

# Given two arrays of strings a1 and a2 return a sorted array r in l
# exicographical order of the strings of a1 which are substrings of 
# strings of a2.

# \#Example 1: a1 = ["arp", "live", "strong"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# returns ["arp", "live", "strong"]

# \#Example 2: a1 = ["tarp", "mice", "bull"]
# a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
# returns []

# Notes:Arrays are written in "general" notation. See "Your Test Cases" for 
# xamples in your language.
# In Shell bash a1 and a2 are strings. The return is a string where words 
# are separated by commas.
# Beware: r must be without duplicates.Don't mutate the inputs.

def in_array(arr1, arr2)
  results_arr = []

  arr1.each do |str1|
    if arr2.any?{ |str2| str2.include?(str1) } == true
      results_arr << str1
    end
  end

  results_arr.sort
end

a1 = ["arp", "live", "strong"]
a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
p in_array(a1, a2) == ["arp", "live", "strong"]

a1 = ["tarp", "mice", "bull"]
p in_array(a1, a2) == []