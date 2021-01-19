# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
    
    age_array = []  # declare a variable array to store all values of the hash, in this case ages of each person
    name_hash.collect{|person, ages|  #iterate through the hash and push each value to the age_array
        age_array.push(ages)}
    current_younger =age_array[0]      #set current_younger to be the first persons age in the hash
    age_array.each {|age|               # iterate through the age_array and compare each age to the current_younger to find youngest person
        if age <= current_younger
            current_younger = age
        else
            current_younger = current_younger
        end     
    }
    name_hash.index(current_younger)    # grab the youngest person name from the hash
     
end
=begin
key_for_min_value({
    "Timmy" => 9, 
    "Sarah" => 6, 
    "Amanda" => 27
})
=end