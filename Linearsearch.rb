class LinearSearch
    def initialize()
        @array=[]
        @key=[]
        @n=[]
    end
    def getuserinput()

        puts "Enter the n value"
        @n=gets.to_i

        puts"Enter those data"
        for i in 0...@n
            @array[i]=gets.to_i
        end

        puts"Enter the key to be searched"
        @key=gets.to_i

    end

    def search()
        for i in 0...@n
            if @array[i]==@key
                return i
            end
        end
        return false
    end
end
object=LinearSearch.new()
object.getuserinput()
val=object.search()
if val==false
    puts " Key not present in the array"
else
    puts "key found in the index #{val}"
end


