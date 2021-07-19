class Palindrome
    def initialize()
        @string
    end
    def getstring()
        puts "Enter the string to be validated"
        @string=gets.chomp

    end
    def validate()
        if @string==@string.reverse
            puts " The given string is a palindrome"
        else
            puts " The given string is not a palindrome"
        end
        
    end
end
ob=Palindrome.new()
ob.getstring()
ob.validate()


