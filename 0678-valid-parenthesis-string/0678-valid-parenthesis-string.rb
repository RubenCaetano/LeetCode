# @param {String} s
# @return {Boolean}
def check_valid_string(s)
    n = s.length - 1
    i = 0
    aux = -1
    while i <= n
        if s[i] == "("
            aux = i
        end

        if s[i] == ")" && aux != -1
            s[i] = ""
            s[aux] = ""
            i = -1
            n -= 2
            aux = -1
        end
        i += 1
    end

    n = s.length - 1
    i = 0
    while i <= n
        #puts "iteration: " + i.to_s
        if i < n && s[i] == "(" && s[i + 1] == "*"
            #puts "Si: " + s[i].to_s + " Si+1: " + s[i + 1].to_s
            s[i + 1] = ""
            s[i] = ""
            i = -1
            n -= 2
            #puts s
        end

        if i > 0 && s[i] == ")" && s[i - 1] == "*"
            #puts "Si: " + s[i].to_s + " Si-1: " + s[i - 1].to_s
            s[i] = ""
            s[i - 1] = ""
            i = -1
            n -= 2
            #puts
        end

        i += 1
    end

    return s.length == 0 || only_asteriks(s)
end

def only_asteriks(s)
    for i in 0..s.length - 1 
        return false if s[i] != "*"
    end
    return true
end