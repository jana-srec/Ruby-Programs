class PrimeOrNot
	
    def initialize ()
		@num
	end

    def getinput()
        puts "Enter the number to be Checked"
        @num=gets.to_i
    end

	def check
		
		if @num==7 || @num==3 ||@num==5 ||@num==2
			return true
		elsif @num%2==0 || @num%3==0 || @num%5==0 || @num%7==0
			return false
		else
			t=@num/2
            i=11
            while i<=t
                if@num%i==0
                    return false
                end
                i+=1
            end
            return true
		end
	end
end
object=PrimeOrNot.new()
object.getinput()
puts("The prime validation of the given number is #{object.check()}")
