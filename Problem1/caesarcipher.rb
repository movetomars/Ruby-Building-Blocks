def caesarCipher(string, shift)
    
    letters = string.upcase.split("")
    letters.each do |s|
        int = s.to_s.ord - 64
        (int + shift + 64).chr
    end
    
    
end
    
    puts "What do you want to encrypt?"
    string = gets.chomp
    puts "And how would you like to shift it?"
    shift = gets.chomp.to_i
    puts caesarCipher(string, shift)