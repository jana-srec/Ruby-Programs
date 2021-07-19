class Bubblesort
    def initialize()
        @array=[]
        @n
    end

    def sort()
        for i in 0...@n-1
            swapped = false;
            for j in 0...@n-i-1
                if @array[j] > @array[j+1]
                    @array[j], @array[j + 1] = @array[j + 1], @array[j]
                    swapped = true;
                end
            end
            if swapped == false
                break;
            end

        end 
        puts"the sorted array #{@array}"
    end

    def getuserinput()
        puts "Enter the input "
        @n=gets.to_i
        puts "Enter the array rlements"
        for i in 0...@n
            @array[i]=gets.to_i
        end
    end
end
obj=Bubblesort.new()
obj.getuserinput()
obj.sort()
