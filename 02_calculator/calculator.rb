def add(a,b)
	return a + b
end

def subtract(a,b)
	return a - b
end

def sum(array)
	@sum = 0
	if array.empty?
		return 0
	elsif array.length == 1
		return array[0]
	else
		array.each do |x|
			@sum += x
		end
		return @sum
	end
end

def multiply(*numbers)
	@result = 1
	numbers.each { |num| @result *= num }
	return @result
end

def power(a,b)
	return a**b
end

def factorial(num)
	if num == 0
		return 1
	else
		x = 1
		result = 1
		while x <= num do
			result *= x
			x = x.next
		end
		return result
	end
end