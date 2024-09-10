# @param {String} s
# @return {Boolean}
def is_palindrome(s)
    s = s.gsub(" ", "").gsub(/[^a-zA-Z0-9]/, '').upcase
    #puts s
    s_length = s.length
    half = (s_length / 2).floor - 1
    for i in 0..half
        #puts "---- iteration " + i.to_s + " ----"
        #puts "s[i]: " + s[i].to_s
        #puts "s[s_length - 1 - i]: " + s[s_length - 1 - i].to_s
        return false if s[i] != s[s_length - 1 - i]
    end

    return true 
end