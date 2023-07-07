using Combinatorics
using Printf

function generate_wordlist(target_info, special_chars, max_length)
    wordlist = []
    base_words = collect(values(target_info))
    
    for len in 1:max_length
        for combination in combinations(base_words, len)
            push!(wordlist, join(combination))
            
            for k in 1:len
                for char_combination in combinations(special_chars, k)
                    for position_combination in permutations(collect(1:len), k)
                        new_word = copy(combination)
                        for i in 1:k
                            new_word = vcat(new_word[1:position_combination[i]-1], char_combination[i], new_word[position_combination[i]:end])
                        end
                        push!(wordlist, join(new_word))
                    end
                end
            end
        end
    end
    
    return wordlist
end

# Get user input for target information
target_info = Dict(
    "name" => "",
    "dog" => "",
    "dad" => "",
    "mom" => "",
    "country" => "",
    "place" => ""
)

println("Enter the target's name:")
target_info["name"] = readline()

println("Enter the target's dog name:")
target_info["dog"] = readline()

println("Enter the target's dad name:")
target_info["dad"] = readline()

println("Enter the target's mom name:")
target_info["mom"] = readline()

println("Enter the target's country:")
target_info["country"] = readline()

println("Enter the target's place to live:")
target_info["place"] = readline()

# Get user input for special characters
println("Enter the special characters (separated by commas):")
special_chars_input = readline()
special_chars = split(special_chars_input, ",")

# Get user input for maximum length
println("Enter the maximum length of the generated words:")
max_length = parse(Int, readline())

wordlist = generate_wordlist(target_info, special_chars, max_length)

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
