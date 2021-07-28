def func_any(hash)
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
    hash.any? { |k,v| k.is_a? Integer }
end

def func_all(hash)
    # Check and return true if all the values within the hash are Integers and are < 10
    # If not all values satisfy this, return false.
    hash.all? { |k,v| v.is_a?(Integer) && v < 10 }
end

def func_none(hash)
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
    hash.none? { |k,v| v.nil? }
end

def func_find(hash)
    # Check and return the first object that satisfies either of the following properties:
    #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20 
    #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
    hash.find { |k,v| [k,v].all? { |x| x.is_a?(Integer) && x <20 } || ( k.is_a?(String) && v.is_a?(String) && v[0] == 'a') }
end



test_hash_1 = {"a" => 1, 'b' => 2, "c" => 33}
test_hash_2 = {"a" => 1, "b" => 2, "c" => 33}
test_hash_3 = {"a" => 1, "b" => nil, "c" => 33}
test_hash_4 = {"a" => 1, "abs" => "allo", "c" => 33}

p func_any(test_hash_1)
p func_all(test_hash_2)
p func_none(test_hash_3)
p func_find(test_hash_4)