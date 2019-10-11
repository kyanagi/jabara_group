require "test_helper"

class JabaraGroupTest < Minitest::Test
  def test_jabara_group
    assert_equal [[1, 6, 7], [2, 5, 8], [3, 4, 9]], [*1..9].jabara(3)
    assert_equal [[1, 6, 7], [2, 5, 8], [3, 4, 9, 10]], [*1..10].jabara(3)
    assert_equal [[1, 6, 7], [2, 5, 8, 11], [3, 4, 9, 10]], [*1..11].jabara(3)
    assert_equal [[1, 6, 7, 12], [2, 5, 8, 11], [3, 4, 9, 10]], [*1..12].jabara(3)
    assert_equal [[1, 6, 7, 12, 13], [2, 5, 8, 11], [3, 4, 9, 10]], [*1..13].jabara(3)
    assert_equal [[1, 6, 7, 12, 13], [2, 5, 8, 11, 14], [3, 4, 9, 10]], [*1..14].jabara(3)

    assert_equal [[1, 2, 3]], [1, 2, 3].jabara(1)
  end
end
