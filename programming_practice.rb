# **********Example*******

# Write a method that joins two strings with a space. =
=begin
def joins_the_strings(word1, word2)
	word1 + " " + word2
end
puts joins_the_strings("Hi", "there") # Should be "Hi there"
puts joins_the_strings("Hello", "world") # Should be "Hello world"
puts joins_the_strings("nice", "job") # Should be "nice job"

# **************************

# Write a method that multiplies two positive integers without using *
def multiply(num1, num2)
	num1 * num2
end
puts multiply(3, 4) # should be 12
puts multiply(0, 2) # should be 0
puts multiply(1, 9) # should be 9

=end
# Find the mode (the most frequent integer) in an array of integers




def mode(array)
	#if an array has no mode return array first we sort similar items them we group them
	# if the count of the sorted items equals the length of the array then return the array
	# sorted the values first them grouped similar items in the array to eachother 
	key_with_max_value = 0
	array_practice = []
	array_practice = array.sort.group_by(&:itself).values

	mode_hash = Hash.new(0)

	if array_practice[0].length == 1
		

		return  p array
	


	else
		

	# created a new hash and counted the instances of very number with the new hash
	
	array.each{ |x| mode_hash[x]+=1	}


	# return the value with the highes key value
	
	key_with_max_value = mode_hash.max_by {|a, b| b


	}
	p key_with_max_value

end


end
puts mode([2, 4, 5, 2]) # should be 2
puts mode([3, 4, 2, 4, 5, 2]) # should be [4, 2]
puts mode([3, 4, 2, 1]) # should be [3, 4, 2, 1]


=begin

	




# Find the common element between two arrays.
def common_element(array1 , array2)
 	c1 = 0

	until c1 > array2.length

 		array1.each { |e| 
 		 

 			if e == array2[c1]

 				return e
			end

 	 }

 	 	c1 += 1

	end
	if c1 > array2.length
		return false
	end
end
puts common_element([2, 3, 4], [1, 9, 3]) # should be 3
puts common_element(["a", "fs"], ["s", "f", "a"]) # should be "a"
puts common_element([2, 1], [32, 21, 3]) # should be nil

# Calculate the average (mean) of an array of numbers.
def average(numbers_array)
	decimal_length = 0
	sum = 0
	decimal_length = numbers_array.length * 1.0

	# adds all the elements in the array

	numbers_array.each{|x| 
		sum += x

	}

	return sum / decimal_length



	
end
puts average([3, 2, 1]) # should be 2
puts average([8, 9]) # should be 8.5
puts average([1, 1, 1, 2]) # should be 1.25

# Filter an array of names to only contain names that start with the letter "A".
def filter_a_names(array)
	output_array = []
	

	array.each{ |x|

	if true == x.include?("A")

		output_array << x
	end


	}


	return  output_array




end
puts filter_a_names(["Bob", "Charlie", "Angel"]) # should be ["Angel"]
puts filter_a_names(["Bob", "Charlie", "Bangel"]) # should be []
puts filter_a_names(["Adam", "Charlie", "Adam"]) # should be ["Adam", "Adam"]

# Create a hash which groups names by their first letter.

	def names_by_first_letter(array)

		name_Hash = Hash.new(0)
		filter_array = []
		

		#filters array case insensitive		
		filter_array = array.sort_by { |x| x.downcase}


		#filters with the first letter in the string 

		name_Hash = filter_array.group_by {|word| word[0].upcase}



	end



# The keys are the first letter, the values are arrays of names.
puts names_by_first_letter(["Adam", "Charlie", "Alex"]) # should be {"A" => ["Adam", "Alex"], "C" => ["Charlie"]}
puts names_by_first_letter(["Adam", "Bobby"]) # should be {"A" => ["Adam"], "B" => ["Bobby"]}
puts names_by_first_letter(["Adam", "Charlie", "alex"]) # should be {"A" => ["Adam"], "a" => ["alex"], "C" => ["Charlie"]}

# Determine if a string is a palindrome (case insensitive)

def palindrome?(string)

	rword = ''
	word = ''
	word = string.downcase
	rword = string.downcase.reverse
	if word == rword
		
		return true 
	
	else false


	end


end 


puts palindrome?("kayak") # should be true
puts palindrome?("KayAk") # should be true
puts palindrome?("whamo") # should be false

# Determine if two strings are anagrams (case insensitive)

def anagrams?(string1, string2)
	wrd_filter = ''
	wrd_filter2 = ''

	wrd_filter = string1.downcase
	wrd_filter2 = string2.downcase

	wrd_filter = wrd_filter.split('').sort.join 

	wrd_filter2 =  wrd_filter2.split('').sort.join 

	if  wrd_filter == wrd_filter2
		


		return true

	else

		return false


	end




end


puts anagrams?("cinema", "iceman") # should be true
puts anagrams?("Cinema", "IceMan") # should be true
puts anagrams?("baseball", "ballbass") # should be false

# Determine if a string is composed of all unique characters (case insensitive)

def unique_chars?(string)

	str1 = ''
	str1 = string.downcase
	str1 = str1.split('')

	count_Hash = Hash.new(0)


	str1.each{|x| count_Hash[x] += 1}

	if count_Hash.values.max ==  1

		return true 


	else false




	end
end

puts unique_chars?("wonderful") # should be true
puts unique_chars?("WonderFul") # should be true
puts unique_chars?("hello") # should be false

# Reverse a sentence string word by word. 
def reverse_sentence(string)
	
	output = ''
	words = []

	if false == string.include?(' ')
		return string
		
	else
		words = string.split(/\W+/)

		words = words.reverse

		words.each{|x| output << x + " "


		}		
		return  output
	end



end 


# For example, given s = "the sky is blue", return "blue is sky the".
puts reverse_sentence("the sky is blue") # should be "blue is sky the"
puts reverse_sentence("What a wonderful kind of day!") # should be "day! of kind wonderful a What"
puts reverse_sentence("hello") # should be "hello"


=end
