# no concept to Sort in Hash
# When you sort, it's converted to Array
# Hash is just key/value pairs

# Sort Hash
person_hash1 = {
    red: "Jason",
    black: "Zack",
    blue: "Billy",
    yellow: "Trini",
    pink: "Kimberly"
}

p person_hash1
p person_hash1.sort
p person_hash1.class
p person_hash1.sort.class
p person_hash1.sort_by

# Sort Array

person_hash2 = [
    [:red, "Jason"],
    [:black, "Zack"],
    [:blue, "Billy"],
    [:yellow, "Trini"],
    [:pink, "Kimberly"]
]

p person_hash2
p person_hash2.sort # sorted by key, can't be sorted by value
p person_hash2.sort_by { |key, value| key} # sorted by key
p person_hash2.sort_by { |key, value| value} # sorted by value