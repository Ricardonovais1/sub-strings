
def substrings (string, dictionary) 

    dictionary += string.split(' ')
    dictionary.each { |word| word.downcase! }

    dictionary.reduce(Hash.new(0)) do |collection, string|
        collection[string] += 1
        collection
    end 
end

print substrings("Este é um motivo para retornar várias palavras", ["palavras", "mais", "palavras"])