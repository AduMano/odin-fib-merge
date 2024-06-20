# frozen_string_literal: true

require('colorize')
require_relative('lib/fibonacci')
require_relative('lib/merge_sort')

# Main Script Run Fibonacci and Merge Sort
## Fibonacci | Generates a Fibonacci Sequence
fib = Fibonacci.fibs(8).to_s.colorize(:yellow)
fib_rec = Fibonacci.fibs_rec(8).to_s.colorize(:yellow)

puts 'FIBONACCI ==============================================================='
puts "  Iterative Approach #fibs(#{'8'.colorize(:blue)}): #{fib}"
puts "  Recursion Approach #fibs_rec(#{'8'.colorize(:blue)}): #{fib_rec}"
puts '========================================================================='

# Merge Sort | Sorts Un-Ordered list
merge1 = MergeSort.merge_sort([3, 2, 1, 13, 8, 5, 0, 1]).to_s.colorize(:yellow)
merge2 = MergeSort.merge_sort([105, 79, 100, 110]).to_s.colorize(:yellow)

puts 'MERGE SORT =============================================================='
puts "  Recursion #merge_sort(#{'[3, 2, 1, 13, 8, 5, 0, 1]'.colorize(:blue)}): #{merge1}"
puts "  Recursion #merge_sort(#{'[105, 79, 100, 110]'.colorize(:blue)}): #{merge2}"
puts '========================================================================='
