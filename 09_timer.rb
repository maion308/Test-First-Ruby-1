class Timer
	def initialize(timer = 0)
		@seconds = timer
	end

	def timer(new_timer)
		timer(seconds)
	end

	def seconds=(x = 0)
		@seconds = x
	end

	def seconds
		 @seconds
	end

	def time_string
		

#input will be seconds.  seconds.
# seconds
 hours = seconds/3600
 remainder = seconds%3600 
 seconds = remainder % 60
 minutes = remainder/60 
 
 hour_string = ''
 minutes_string = ''
 seconds_string = ''
 if hours < 10
	hour_string = 	"0#{hours}"
else 
	hour_string = hours.to_s
end
if minutes < 10
	minutes_string = 	"0#{minutes}"
else 
	minutes_string = minutes.to_s
end
if seconds < 10	
	seconds_string = 	"0#{seconds}"
	else 
	seconds_string = seconds.to_s
end

arr = [hour_string, minutes_string, seconds_string]
arr.join(':')

	end
end
