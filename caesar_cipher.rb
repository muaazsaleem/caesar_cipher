#ruby-2.0.0

def caesar_cipher string_param, shift_param
	
	alphabet = ('a'..'z').to_a
	letters = string_param.chomp.downcase.scan(/\w/)
	
	letters.each.with_index do |v,i|
		key = alphabet.index(v) + shift_param
		key -= 26 if key>25 
		
		letters[i] = alphabet[key]
	end
	letters.join
end
	

p caesar_cipher("i love you  ", 5)