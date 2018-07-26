person_hash1 = {
    red: "Jason",
    black: "Zack",
    blue: "Billy",
    yellow: "Trini",
    pink: "Kimberly"
}

# Check key 1
p person_hash1.has_key?(:red)

# Check key 2
p person_hash1.key?(:red)

# Check value 1
p person_hash1.value?("Jason")

# Check value 2
p person_hash1.value?("Jason")
