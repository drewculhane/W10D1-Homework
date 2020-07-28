# const phrase = 'The quick brown fox jumps over the lazy dog'
# ruby homework.rb
# function countVowels(string) {
#   const vowels = 'aeiou';
#   // convert string to an array
#   // use reduce to loop through each letter
#   // return the final value of reduce (totalValues's last value)
#   return string.split('').reduce( (totalVowels, letter) => {
#     // if the letter is a vowel
#     if (vowels.includes(letter)) {
#       // increase total by 1
#       return totalVowels += 1;
#     }
#     // keep totalVowels the same
#     return totalVowels;
#   }, 0); // initial value of totalVowels is 0
# }
# console.log('total vowels: ', countVowels(phrase));



# Problem 1: 
def vowelMatch s

# Stringing together scanning and counting methods. 
#An adaptation of the s.match given in Ruby morning examples:
# # p s.match(/[aeiou]/) {|m| m. to_s} 
# Scan searches for the provided input but doesn't allow for overlap. 
# count adds the instances. 

  vowel_count= s.scan(/[aeiou]/).count 
  puts "The Number of Vowels is: #{vowel_count}"
end 

vowelMatch "aeiouasdfashdgk"

# Problem 2 

# Write a program that prints the number of
#  times the string 'bob' occurs in s. For example, if s = 'azcbobobegghakl', 
#  then your program should print Number of times bob occurs is: 2

# MY PSEUDOCODE/NOTES for Problem 2. 

#Discovered REGEX repeat selector on Codeacademy Ruby forums, 
# and realised could be used for this purpose. 

#Additional psuedocode/explanation on repeat REGEX: 
# /(?="query") defines a substring or really anything to look for, with a lookahead that is by 
# default positive. 
# For "backwards" scanning or positive lookbehind, substitute with the following: 
# /(?<="query"). Returns same result, but may return quicker depending on pattern location. 

# Might also be possible with Gsub: 

# GSUB: (Useful later)

# gsub(pattern, replacement) → new_str
# gsub(pattern, hash) → new_str
# gsub(pattern) {|match| block } → new_str
# gsub(pattern) → enumerator

def bobCount s 
    #Pseudocode and method adapted from previous, only new thing
    # is the +ve lookahead regex repeat operator. See notes 
    # above for later revision and pseudocode on this adaptation 
    # from the last problem.  
    # Attempted same code without repeat regex, but scanning and counting 
    # doesn't account for overlapping bobs. *Note to self: scan.count method stringing does not search exhaustively.  
    bob_count= s.scan(/(?<=bob)/).count 
    puts "Number of times bob occurs is: #{bob_count}."
end 

bobCount "bobobobobob" 

# Repeats 4 times, as required with overlaps. 

# Problem 3 (covered in lab)

# Shovel explained: (Medium.com article)

# santa = 'Saint'
# santa << ' Nick'
# Here we are saying “Computer, please create a string object ‘Saint’, store it at some address, 
# and we’ll talk about that address later using the codeword santa." Then, using the <<, we are saying, 
# “Computer, remember that object you are saving for me at the santa address? Please add ‘ Nick’ to the end of that object. Thanks, computer!”

## NOTES: Adding a shovel, like in this model, allowed me to append to the value(s) I am storing in the rev_string, which is why 
# this function looks so elegant, and sweet. The reverse of the string is appending to the end of rev_string. 
# When the loop runs out, all I have to do is print out the result. 

def reverseInput string 
    rev_string= ''
for i in 1..(string.size) 
    rev_string << string[string.size - i]
end 
puts rev_string 
end 

reverseInput "I am a Goofy Goober yeah"

# Retains original character, characteristics. 


def caseCounterRuby s
    # Another regex solution. Here I guessed the syntax based 
    # on CodeAcademy and class, and it worked inside the repeater. 
    upper_count= s.scan(/(?<=[A-Z])/).count
    lower_count= s.scan(/(?<=[a-z])/).count  
puts "UPPERCASE: #{upper_count}. LOWERCASE: #{lower_count}."
end 

caseCounterRuby "ABC easy as one two three"
