def caesar_cipher(string, shift_factor)
    char_values = string.bytes
    shifted_values = char_values.map do |value|
			if value.between?(65, 90)
				(value + shift_factor) > 90 ? 64 + shift_factor : value + shift_factor
			elsif value.between?(97, 122)
				(value + shift_factor) > 122 ? 96 + shift_factor : value + shift_factor
			elsif value == 32
				value
			end
		end
		shifted_values.pack('c*')
end

p caesar_cipher("HellO ThEre ZzZ", 5)
p caesar_cipher("hello there zzz", 5)
