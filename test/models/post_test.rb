# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  setup do
    @post_one = posts(:one)

    @post_like_one = post_likes(:one)
    @title_valid = 'category'

    @user_one = users(:one)
    @user_two = users(:two)

    @post_data = {
      title: @title_valid,
      body: @post_one.body,
      category_id: @post_one.category_id,
      creator_id: @user_one.id
    }
  end

  test 'valid title' do
    assert_predicate Post.new(@post_data), :valid?
  end

  test 'valid body' do
    assert_predicate Post.new(@post_data), :valid?
  end

  test 'post like by user' do
    assert @post_one.like_by_user(@user_one)
    assert_not @post_one.like_by_user(@user_two)
  end
end
