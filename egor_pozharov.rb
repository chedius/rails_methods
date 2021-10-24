class Methods
	attr_accessor :arr

	def initialize(arr)
		@arr = arr
	end
	
	def method1
	    @arr.size.times {|i| print @arr[i].to_s + " " if(i%2!=0)}
	    print ""  
		@arr.size.times {|i| print @arr[i].to_s + " " if(i%2==0)}
	    puts ""
	end

	def method2
		@arr.size.times {|i| print @arr[i].to_s + " " if(i%2==0)}
	    print ""
		@arr.size.times {|i| print @arr[i].to_s + " " if(i%2!=0)}
	    puts ""
	end

	def method3
		i = @arr.find_index {|i| @arr.first < i && i < @arr.last}
		puts i.nil? ? "[]" : i
	end

	def method4
		@arr.rindex(@arr.last).downto(@arr.index(@arr.first)) do |i|
	      case @arr[i] > @arr.first and @arr[i] < @arr.last
	        when true
	          puts i
	          break
	      end
	      case i
	        when @arr.index(@arr.first)
	          puts '[ ]'
	      end
	    end
	end

	def method5
		print @arr.first, ' '
	    @arr.index(@arr.first)+1.upto(@arr.rindex(@arr.last)-1) do |i|
	      case @arr[i] %2 == 0
	        when true
	          print @arr[i]+=@arr.first, ' '
	        else print @arr[i], ' '
	      end
	    end
	    puts @arr.last
	end

	def method6
		print @arr.first, ' '
	    @arr.index(@arr.first)+1.upto(@arr.rindex(@arr.last)-1) do |i|
	      case @arr[i] %2 == 0
	        when true
	          print @arr[i]+=@arr.last, ' '
	        else print @arr[i], ' '
	      end
	    end
	    puts @arr.last
	end

	def method7
		print @arr.first, ' '
	    @arr.index(@arr.first)+1.upto(@arr.rindex(@arr.last)-1) do |i|
	      case @arr[i] %2 != 0
	        when true
	          print @arr[i]+=@arr.last, ' '
	        else print @arr[i], ' '
	      end
	    end
	    puts @arr.last
	end

	def method8
		print @arr.first, ' '
	    @arr.index(@arr.first)+1.upto(@arr.rindex(@arr.last)-1) do |i|
	      case @arr[i] %2 != 0
	        when true
	          print @arr[i]+=@arr.first, ' '
	        else print @arr[i], ' '
	      end
	    end
	    puts @arr.last
	end

	def method9
		_arr = @arr.map {|i| i > 0 ? @arr.min : i}
		print _arr
	end

	def method10
		_arr = @arr.map {|i| i > 0 ? @arr.max : i}
		print _arr
	end
	
end

methods = Methods.new([1,2,3,4,5,6,7,8])
methods.method1
methods.method2
methods.method3
methods.method4
methods.method5
methods.method6
methods.method7
methods.method8
methods.method9
methods.method10