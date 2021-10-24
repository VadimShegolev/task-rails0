class MyMethods
	attr_accessor :arr

	def initialize(arr)
		@arr = arr
	end
#1
	def method1
	    @arr.size.times {|i| print @arr[i].to_s + " " if(i%2!=0)}
	    print ""  
		@arr.size.times {|i| print @arr[i].to_s + " " if(i%2==0)}
	    puts ""
	end

#2
	def method2
		@arr.size.times {|i| print @arr[i].to_s + " " if(i%2==0)}
	    print ""
		@arr.size.times {|i| print @arr[i].to_s + " " if(i%2!=0)}
	    puts ""
	end

#3
	def method3
		i = @arr.find_index {|i| @arr.first < i && i < @arr.last}
		puts i.nil? ? "[]" : i
	end

#4
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

#5
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

#6
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

#7
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

#8
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

#9
	def method9
		_arr = @arr.map {|i| i > 0 ? @arr.min : i}
		print _arr
	end

#10
	def method10
		_arr = @arr.map {|i| i > 0 ? @arr.max : i}
		print _arr
	end
	
end

my_methods = MyMethods.new([1,2,3,4,5])
my_methods.method1
my_methods.method2
my_methods.method3
my_methods.method4
my_methods.method5
my_methods.method6
my_methods.method7
my_methods.method8
my_methods.method9
my_methods.method10
