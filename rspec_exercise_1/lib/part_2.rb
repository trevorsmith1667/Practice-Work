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

def vowel_counts(string)
    vowel_hash = Hash.new(0)
    vowels = "aeiou"
    string.each_char do |char| 
        if vowels.include?(char.downcase)
            vowel_hash[char.downcase] += 1
        end 
    end 
  vowel_hash
end 

def caesar_cipher(message, n)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    cipher = ""
    message.each_char do |char| 
        if alphabet.include?(char)
        old_index = alphabet.index(char)
        new_index = (old_index + n) % 26
        cipher += alphabet[new_index]
        else 
            cipher += char
        end
    end 

    cipher
end 