class Timer
	attr_accessor :seconds, :minutes, :hours

	def initialize
		@seconds = 0
		@minutes = 0
		@hours = 0
	end

	def time_string
		if @seconds < 60
			if @seconds < 10
				sec = '0' + @seconds.to_s
			else
				sec = @seconds.to_s
			end
		else
			while @seconds >= 60
				@minutes += 1
				@seconds -= 60
			end

			if @seconds < 10
				sec = '0' + @seconds.to_s
			else
				sec = @seconds.to_s
			end
		end

		if @minutes < 60
			if @minutes < 10
				min = '0' + @minutes.to_s
			else
				min = @minutes.to_s
			end
		else
			while @minutes >= 60
				@hours += 1
				@minutes -= 60
			end

			if @minutes < 10
				min = '0' + @minutes.to_s
			else
				min = @minutes.to_s
			end
		end

		if @hours < 10
			hrs = '0' + @hours.to_s
		else
			hrs = @hours.to_s
		end

		return hrs + ':' + min + ':' + sec
	end

end