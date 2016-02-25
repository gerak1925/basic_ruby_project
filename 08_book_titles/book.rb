class Book
	attr_accessor :title

	def initialize
		@title = ''
	end

	def title
		array = @title.split.map do |word|
			if %w(a an the and but or for nor on to in at from by over of down with).include?(word)
				word
			else
				word.capitalize
			end
		end
		array[0] = array[0].capitalize
		array.join(' ')
	end

end