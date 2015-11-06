def caesarCipher(string, shift)
    
    new = ''
    
    string.to_s.each_char do |s|
        int = s.to_s.ord
        cap = 0
        
        if s.match(" ") || s.match(",")
                int = s.to_s.ord - shift
                elsif s == /[A-Z]/
                int = s.to_s.ord - 64
                cap = 64
                elsif s == /[a-z]/
                int = s.to_s.ord - 96
                cap = 96
        end
    
        rough = int + shift.to_i + cap
        
        if rough > 122 || (rough < 97 && rough > 90)
            rough -= 26
        end
        
        new += rough.chr
        
    end
    
    print new.to_s


end


puts "What do you want to encrypt?"
string = gets.chomp
puts "And how would you like to shift it?"
shift = gets.chomp.to_i
puts caesarCipher(string, shift)