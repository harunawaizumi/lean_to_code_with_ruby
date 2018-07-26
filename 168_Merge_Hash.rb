# Merge Hash
before_hash = {
    a: 'aaa',
    b: 'bbb',
    c: 'ccc',
    d: 'ddd'
}

after_hash = {
    c: 'CCC',
    d: 'DDD',
    e: 'EEE',
    f: 'FFF'
}

# way 1 : temporary

p before_hash.merge(after_hash)
p before_hash

# way 2 : permanent
p before_hash.merge!(after_hash)
p before_hash

# Manual Merge Method

def custom_merge(hash1, hash2)
  result = hash1
  hash1.each {|key, value|
    result[key] = value
  }
  result
end

p custom_merge(before_hash, after_hash)

