# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.
require "byebug"
def largest_prime_factor(num)
    largest_divisor = 0 
    (1..num).each do |divisor|
        if is_prime?(divisor) && num % divisor == 0
            largest_divisor = divisor
        end 
    end 

    largest_divisor
end 

def is_prime?(num)
    return false if num < 2
    (2...num).none? {|n| num % n == 0 }
end 

def unique_chars?(string)
    # non_duplicated = []

    # string.each_char do |char| 
    #     if non_duplicated.include?(char)
    #        return false 
    #     end 
    #     non_duplicated << char
    # end 
    # true

    string_hash = Hash.new(0)
    string.each_char do |letter|
        if string_hash[letter] != 0
            return false 
        end 
        string_hash[letter] += 1
    end 
    true
end 


def dupe_indices(array)
    indices_hash = Hash.new { |h, k| h[k] = []}
    non_duplicated = []

    array.each_with_index do |ele, i|
            indices_hash[ele] << i 
             
    end 


    indices_hash.select {|ele, arr| arr.length > 1}
   
end 

def ana_array(arr1, arr2)
    arr1_hash = Hash.new(0)
    arr2_hash = Hash.new(0)

    arr1.each do |ele| 
        arr1_hash[ele] += 1
    end 

    arr2.each do |ele|
        arr2_hash[ele] += 1 
    end 

    arr1_hash == arr2_hash
end 