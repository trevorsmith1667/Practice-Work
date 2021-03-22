def average(num1, num2)
   return (num1 + num2) / 2.0
end 

def average_array(arr)
    arr.sum / (arr.length * 1.0)
end 

def repeat(str, num)
    repeated = ""
    num.times do
    repeated += str
    end
    repeated
end 

def yell(str)
    str.upcase + "!"
end 

def alternating_case(sentence)
    words = sentence.split(" ")
     new_sentence = words.map.with_index do |word, i|
        if i == 0 || i % 2 == 0 
            word.upcase 
        else 
            word.downcase
        end 
    end 
    new_sentence.join(" ")

end 