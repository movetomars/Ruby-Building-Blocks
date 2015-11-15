def substrings(source, dictionary)
    
    @counts = Hash.new(0)
    
    source.each do |s|
        
        dictionary.each do |d|
            if s.downcase.include?(d)
                @counts[d] += 1
            end
        end
        
    end
    
    @counts
end

puts "What words are contained within the words that we speak?"
puts "Enter a word or a sentence that you want to take a closer look at."

source = gets.chomp.split(" ")

puts "Enter some words, separated by commas, that you want to search for."

dictionary = gets.chomp.gsub(/[,]/, '').split(" ")

puts substrings(source, dictionary)