def hipsterfy(word)
    vowels = "aeiouAEIOU"
    reversed = word.reverse
    reversed.each_char.with_index do |char, i| 
        if vowels.include?(char)  
          new_word = reversed[0...i] + reversed[i + 1..-1]  
          return new_word.reverse 
        end     
    end   
    word    
end 