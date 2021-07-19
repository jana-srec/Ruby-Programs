class Binarysearch
   
    def initialize()
        @key
        @n
        @array=Array.new()
    end

    def getinput()
        puts "Enter the number of elements in the array"
        @n=gets.to_i
        puts "Enter the elements of the array"
        
        for i in 0...@n
            temp=gets.to_i
            @array[i]=temp
            puts @array[i]
        end
        @array=@array.sort
    end

    def getkey
        puts " Enter the key to be searched"
        @key=gets.to_i
    end
     
    def search()
		first=0
		last=@array.length()-1
		mid=(first+last)/2
		while first<=last
			if(@array[mid]<@key)
				first=mid+1
			elsif @array[mid]>@key
				last=mid-1
			else
				return mid
			end
			mid=(first+last)/2
		end
		return false		
	end 


end
object = Binarysearch.new()
object.getinput()
object.getkey()
if object.search==false
    puts "Sorry key is not present in the array"
else
    puts "Key is found in the index #{object.search}"
end
