require 'set'

def pangram?(string)
    alphabet = Set.new('a'..'z') # Make a set for comparison
    characters = string.downcase.chars.select { |char| char.match?(/[a-z]/) }.to_set
    # ^^ Convert all characters to lowercase and match only alphabetic characters as a set
    return characters >= alphabet # Compare the two sets and return the result
end
