# Hash to Array

person_hash1 = {
    red: "Jason",
    black: "Zack",
    blue: "Billy",
    yellow: "Trini",
    pink: "Kimberly"
}


p person_hash1.to_a
p person_hash1.to_a[0]
p person_hash1.class

# Array to Hash
person_hash2 = [
    [:red, "Jason"],
    [:black, "Zack"],
    [:blue, "Billy"],
    [:yellow, "Trini"],
    [:pink, "Kimberly"]
]

p person_hash2.to_h
p person_hash2.to_h[:red]
p person_hash2.class
