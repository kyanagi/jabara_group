require "jabara_group/version"

module Enumerable
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
