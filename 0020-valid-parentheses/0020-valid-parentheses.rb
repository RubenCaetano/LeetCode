# @param {String} s
# @return {Boolean}
def is_valid(s)
    return false if s.length % 2 != 0 || s.empty?
    i = 0

    queue = [ ]
    while i <= s.length - 1
        if is_open_parentheses(s[i])
            queue << s[i]
        else
            return false if s[i] != reverse_parentheses(queue[-1])
            queue.pop
        end
        i += 1
    end
    return queue.length == 0
end

def is_open_parentheses(parentheses)
    if parentheses == "(" || parentheses == "{" || parentheses == "["
        return true
    end
    return false
end

def reverse_parentheses(parentheses)
    if parentheses == "("
        ")"
    elsif parentheses == ")"
        "("
    elsif parentheses == "{"
        "}"
    elsif parentheses == "}"
        "{"
    elsif parentheses == "["
        "]"
    elsif parentheses == "]"
        "["
    end
end