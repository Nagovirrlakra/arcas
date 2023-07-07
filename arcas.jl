using Combinatorics
using Printf

function generate_wordlist(base_words, max_length)
    wordlist = []
    
    for len in 1:max_length
        for permutation in permutations(base_words, len)
            push!(wordlist, join(permutation))
        end
    end
    
    return wordlist
end

# Get user input for base words
println("Enter the base words (separated by commas):")
input_words = readline()
base_words = split(input_words, ",")

# Get user input for maximum length
println("Enter the maximum length of the generated words:")
max_length = parse(Int, readline())

wordlist = generate_wordlist(base_words, max_length)

# Print the generated wordlist
println("Generated Wordlist:")
println(wordlist)

# Prompt to save the wordlist to a text file
println("Do you want to save the wordlist to a text file? (y/n):")
save_choice = readline()

if save_choice == "y" || save_choice == "Y"
    println("Enter the filename to save the wordlist (without extension):")
    filename = readline()
    filename = string(filename, ".txt")
    
    open(filename, "w") do file
        for word in wordlist
            println(file, word)
        end
    end
    
    println("Wordlist saved to $filename.")
else
    println("Wordlist not saved.")
end
