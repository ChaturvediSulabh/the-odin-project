# @param {String[]} words
# @return {Integer}
class International_Morse_Code
    attr_accessor :morse_alphabets

    def initialize
        @morse_alphabets = { "a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....","i" => "..", "j" => ".---","k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.", "o" => "---", "p" => ".--.", "q" => "--.-", "r" => ".-.", "s" => "...","t" => "-", "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-", "y" => "-.--", "z" => "--.." }
    end

    def unique_morse_representations(words)
        result = []
        words.each do |word|
            characters = word.chars
            morse_code = ''
            characters.each do |char|
              morse_code += @morse_alphabets[char]
            end
            result.push(morse_code)
        end
        puts result
    end
end
words = ["gin", "zen", "gig", "msg"]
run = International_Morse_Code.new
run.unique_morse_representations(words)
