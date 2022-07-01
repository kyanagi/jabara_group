require "jabara_group/version"

module Enumerable
  # Divides +self+ into +n+ groups.
  #
  # The distribution of elements is done as follows:
  # The 1st element goes to the 1st group, the 2nd element goes to the 2nd group, ..., the nth element goes to the nth group.
  # The n+1th element goes to the nth group, the n+2th element goes to the n-1th group, ..., the 2nth element goes to the 1st group.
  # The 2n+1th element goes to the first group, the 2n+2th element goes to the 2nd group, and so on.
  #
  # Each group has <code>self.size / n</code> elements if <code>self.size % n == 0</code>.
  # Otherwise, some groups have <code>(self.size / n) + 1</code> elements.
  #
  #   ("a".."l").jabara(3) # => [["a", "f", "g", "l"], ["b", "e", "h", "k"], ["c", "d", "i", "j"]]
  #   ('a'..'m').jabara(3) # => [["a", "f", "g", "l", "m"], ["b", "e", "h", "k"], ["c", "d", "i", "j"]]
  #
  # @param n [Integer] the number of groups
  # @return [Array<Array<Object>>]
  def jabara(n)
    raise ArgumentError.new('should be positive') if n <= 0
    return [dup] if n == 1

    index, direction = 0, 1
    each_with_object(Array.new(n) { [] }) do |e, groups|
      groups[index] << e

      case [index, direction]
      when [0, -1]
        direction = 0
      when [0, 0]
        direction = 1
      when [n - 1, 1]
        direction = 0
      when [n - 1, 0]
        direction = -1
      end
      index += direction
    end
  end
end
