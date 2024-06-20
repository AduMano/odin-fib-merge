# frozen_string_literal: true

# Merge Sort
class MergeSort
  def self.merge_sort(array)
    return array if array.count < 2

    half = (array.count / 2).floor
    left = merge_sort(array[0..half - 1]) # Returns an array
    right = merge_sort(array[half..]) # Returns an array

    merge(left, right)
  end

  def self.merge(left, right) # rubocop:disable Metrics/MethodLength
    merged = []
    i = j = 0

    while i < left.length && j < right.length
      if left[i] <= right[j]
        merged.push(left[i])
        i += 1
      else
        merged.push(right[j])
        j += 1
      end
    end

    merged.concat(left[i..] + right[j..])
    merged
  end
end

# merge_sort([1,4,7,3,2,6,5])
#   is 1 < 2? return [1] i++ (1)
#   is 3 < 2? return [1,2] j++ (1)
#   is 3 < 5? return [1,2,3] i++ (2)
#   is 4 < 5? return [1,2,3,4] i++ (3)
#   is 7 < 5? return [1,2,3,4,5] j++ (2)
#   is 7 < 6? return [1,2,3,4,5,6] j++ (3)
#   Break loop, concat left[3..] + right[3..], return [1,2,3,4,5,6,7]

#   merge_sort([1,4,7,3])
#     is 1 <= 3? return [1] i++ (1)
#     is 4 <= 3? return [1,3] j++ (1)
#     is 4 <= 7? return [1,3,4] i++ (2)
#     Break loop, concat left[2..] + right[1..], return [1,3,4,7]

#     merge_sort([1,4])
#       is 1 < 4? return [1] i++ (1)
#       Break loop, concat left[1..] + right[0..], return [1,4]

#       merge_sort([1]) return itself
#       merge_sort([4]) return itself

#     merge_sort([7,3])
#       is 7 < 3? return [3] j++ (1)
#       Break loop, concat left[0..] + right[1..], return [3,7]

#       merge_sort([7]) return itself
#       merge_sort([3]) return itself

#   merge_sort([2,6,5])
#     is 2 < 5? return [2] i++ (1)
#     is 6 < 5? return [2,5] j++ (1)
#     Break loop, concat left[1..] + right[1..], return [2,5,6]

#     merge_sort([2,6])
#       is 2 < 6? return [2] i++ (1)
#       Break loop, concat left[1..] + right[0..], return [2,6]

#       merge_sort([2]) return itself
#       merge_sort([6]) return itself

#     merge_sort([5]) return itself
