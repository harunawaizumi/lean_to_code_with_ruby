# Difference between Hash and String


# 1. Hash is simpler version of String
p "name".methods.length # 174 : takes much more space in memory
p :name.methods.length # 82 : takes much less space in memory

# 2. Hash has two ways of writing
# (1) : NAME
person1 = {
    :name => "Boris",
    :age => 25,
    :handsome => true,
    :languages => ["Ruby", "Python", "JavaScript"]
}
# (2) NAME :
person2 = {
    name: "Boris",
    age: 25,
    handsome: true,
    language: ["Ruby", "Python", "Javascript"]
}

p person1[:name]
p person2[:name]

# 3. Hash has two ways of fetch/store

p person1[:name] # fetch
p person1.fetch(:name)  # fetch
p person1[:hobby] = "Running" # store
p person1.store(:hobby, "Running") # store


# 4. Hash doesn't matter the order of arguments
# no need to care the order (positive)

def calculate_total_1(price, tip, tax)
  tax_amount = price * tax
  tip_amount = price * tip
  price + tip_amount + tax_amount
end

# the order of arguments is important without Hash
p calculate_total_1(100, 0.05, 0.1)

def calculate_total_2(info)
  tax_amount = info[:price] * info[:tax]
  tip_amount = info[:price] * info[:tip]
  info[:price] + tax_amount + tip_amount
end

# the order of arguments is NOT important with Hash

p calculate_total_2({tax: 0.1, tip: 0.05, price: 100}) # 115
p calculate_total_2({tip: 0.05, tax: 0.1, price: 100}) # 115
p calculate_total_2(tax: 0.1, tip: 0.05, price: 100) # 115
p calculate_total_2 tax: 0.1, tip: 0.05, price: 100 # 115

sample = {
    :name => "Boris",
    :age => 25,
    :handsome => true,
    :languages => ["Ruby", "Python", "JavaScript"]
}

