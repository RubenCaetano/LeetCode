# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
    return 0 if s.nil? || s == ""
    return 1 if s.length == 1

    res = []
    count = 0
    for i in 0..s.length - 1 do
        set = Set.new   
        count = 1

        for j in i + 1..s.length - 1 do
            count += 1
            set.add(s[i])
            #puts "-----------------"
            #puts s
            #puts "i: " + i.to_s
            #puts "j: " + j.to_s
            #puts "s[i]: " + s[i].to_s
            #puts "s[j]: " + s[j].to_s
            if set.include? s[j]
                res << count - 1
                #puts "count_1: " + (count - 1).to_s
                #puts "set: " 
                #print_set(set)
                break
            else
                set.add(s[j])
            end
            
            #puts "count_1: " + count.to_s
            res << count
        end
    end
    return res.max
end

def print_set(set)
    set.each do |val|
        print val.to_s +  ", "
    end
    puts ""
end