# frozen_string_literal: true

# Fibonacci Class
class Fibonacci
  def self.fibs(number)
    fibonacci = [0, 1]

    return [] if number.eql?(0)
    return [0] if number.eql?(1)
    return fibonacci if number.eql?(2)

    (3..number).each { fibonacci.push(fibonacci[-1] + fibonacci[-2]) }

    fibonacci
  end

  def self.fibs_rec(number)
    return [] if number.eql?(0)
    return [0] if number.eql?(1)
    return [0, 1] if number.eql?(2)

    fib_sequence = fibs_rec(number - 1)
    fib_sequence.push(fib_sequence[-1] + fib_sequence[-2])
    fib_sequence
  end
end

# fibs_rec(8)
#   fibs_rec(7)
#     fibs_rec(6)
#       fibs_rec(5)
#         fibs_rec(4)
#           fibs_rec(3)
#             fibs_rec(2)
#             return [0, 1]
#           return [0, 1, (0 + 1) 1]
#         return [0, 1, 1, (1 + 1) 2]
#       return [0, 1, 1, 2, (1 + 2) 3]
#     return [0, 1, 1, 2, 3, (2 + 3) 5]
#   return [0, 1, 1, 2, 3, 5, (3 + 5) 8]
# return [0, 1, 1, 2, 3, 5, 8, (5 + 8) 13]
