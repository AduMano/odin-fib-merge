# frozen_string_literal: true

require_relative('lib/fibonacci')
require_relative('lib/merge_sort')

# Main Script Run Fibonacci and Merge Sort
## Fibonacci | Generates a Fibonacci Sequence
puts 'FIBONACCI ==============================================================='
puts "  Iterative Approach #fibs(8): #{Fibonacci.fibs(8)}"
puts "  Recursion Approach #fibs_rec(8): #{Fibonacci.fibs_rec(8)}"
puts '========================================================================='

# Merge Sort | Sorts Un-Ordered list
