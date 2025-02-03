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

  def test_jabara_for
    groups = %w(a b c)

    assert_equal({ "a" => [1, 6, 7], "b" => [2, 5, 8], "c" => [3, 4, 9] }, [*1..9].jabara_for(groups))
    assert_equal({ "a" => [1, 6, 7], "b" => [2, 5, 8], "c" => [3, 4, 9, 10] }, [*1..10].jabara_for(groups))
    assert_equal({ "a" => [1, 6, 7], "b" => [2, 5, 8, 11], "c" => [3, 4, 9, 10] }, [*1..11].jabara_for(groups))
    assert_equal({ "a" => [1, 6, 7, 12], "b" => [2, 5, 8, 11], "c" => [3, 4, 9, 10] }, [*1..12].jabara_for(groups))
    assert_equal({ "a" => [1, 6, 7, 12, 13], "b" => [2, 5, 8, 11], "c" => [3, 4, 9, 10] }, [*1..13].jabara_for(groups))
    assert_equal({ "a" => [1, 6, 7, 12, 13], "b" => [2, 5, 8, 11, 14], "c" => [3, 4, 9, 10] }, [*1..14].jabara_for(groups))

    assert_equal({ "a" => [1], "b" => [2], "c" => [] }, [1, 2].jabara_for(groups))
    assert_equal({ "a" => [], "b" => [], "c" => [] }, [].jabara_for(groups))

    assert_raises(ArgumentError) { [1, 2, 3].jabara_for([]) }
  end
end
