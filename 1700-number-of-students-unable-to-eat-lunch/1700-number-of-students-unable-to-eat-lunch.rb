# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
    n = students.length - 1
    i = 0
    while i <= n
        if students[0] == sandwiches[0]
            students.delete_at(0)
            sandwiches.delete_at(0)
            i = -1
            n -= 1
        else
            students = students.rotate(1)
        end
        i += 1
    end
    return students.length
end