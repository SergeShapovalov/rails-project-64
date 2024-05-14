# frozen_string_literal: true

require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  setup do
    @category_one = categories(:one)
    @name_valid = 'category'
  end

  test 'valid name' do
    assert_predicate Category.new(name: @name_valid), :valid?
  end
end
