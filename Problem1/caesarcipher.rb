def caesarCipher(string, shift)
    
    string.to_s.each_char do |s|
        int = s.to_s.ord
        cap = 0
        
        if s == /[A-Z]/
            int = s.to_s.ord - 64
            cap = 64
        elsif s == /[a-z]/
            int = s.to_s.ord - 96
            cap = 96
        end
        
        new = (int + shift.to_i + cap).chr
        print new.to_s
    end
    
end
    
    puts "What do you want to encrypt?"
    string = gets.chomp
    puts "And how would you like to shift it?"
    shift = gets.chomp.to_i
    puts caesarCipher(string, shift)