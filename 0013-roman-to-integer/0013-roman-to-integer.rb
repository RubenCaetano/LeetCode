# @param {String} s
# @return {Integer}
def roman_to_int(s)
    sequence = [ 'I', 'V', 'X', 'L', 'C', 'D', 'M' ]
    number = 0
    i = 0
    while i <= s.length - 1 do
        n = times_repeated(s, i)
        minus = 1
        if s[i + 1]
            next_letter_index = sequence.index(s[i + 1])
            this_letter_index = sequence.index(s[i])
            minus = (next_letter_index <= this_letter_index ? 1 : -1)
        end
        number += letter_value(s[i]) * n * minus
        i += n
    end
    return number
end

def times_repeated(s, start_index)
    letter = s[start_index]
    i = start_index
    count = 0
    while letter == s[i] do
        count = count + 1
        i = i + 1
    end
    return count
end

def letter_value(letter)
    case letter
    when 'I'
        1
    when 'V'
        5
    when 'X'
        10 
    when 'L'
        50
    when 'C'
        100
    when 'D'
        500
    when 'M'
        1000
    else
        0
    end
end