# Download and run this file, and get the specs passing
# You might need to `gem install minitest`
require 'minitest'

class Dog
  # You need to define this class so that the specs below pass
end

require 'minitest/autorun'

class TestDog < MiniTest::Test
  def test_that_dogs_know_their_human
    sadie = Dog.new 'Mason'
    assert_equal sadie.human, 'Mason'
  end

  def test_that_dogs_are_usually_hungry
    lucky = Dog.new 'James'
    assert_equal lucky.hungry?, true
  end

  def test_that_dogs_arent_hungry_after_being_fed
    lucky = Dog.new 'James'
    lucky.feed!
    assert_equal lucky.hungry?, false
  end
end