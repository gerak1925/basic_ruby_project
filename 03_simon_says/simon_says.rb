def echo(string)
	string
end

def shout(string)
	string.upcase
end

def repeat(string, n = 2)
	array = []
	n.times { array << string }
	output = array.join(' ')
	return output
end

def start_of_word(string, num)
	string[0..num-1]
end

def first_word(string)
	array = string.split(' ')
	return array[0]
end

def titleize(string)
	array = string.split.map do |word|
		if %w(a an the and but or for nor on at to from by over of down with).include?(word)
			word
		else
			word.capitalize
		end
	end
	array.first.capitalize!
	array.join(' ')
end