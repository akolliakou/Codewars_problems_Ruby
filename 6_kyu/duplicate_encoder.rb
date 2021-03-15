# 6 kyu

# The goal of this exercise is to convert a string to a new string where each character 
# in the new string is "(" if that character appears only once in the original string, or ")" 
# if that character appears more than once in the original string. Ignore capitalization when 
# determining if a character is a duplicate.
# Examples

# "din"   => "((("

# "recede"  => "()()()"

# "Success" => ")())())"

# "(( @"   => "))(("

def duplicate_encode(str)
  encoded_str = ""
  downcased_str =  str.downcase

  downcased_str.chars do |char|
    if downcased_str.count(char) == 1
      encoded_str << "("
    elsif downcased_str.count(char) > 1
      encoded_str << ")"
    end
  end

  encoded_str
end

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("

