# frozen_string_literal: true

return if PostComment.any?

post = Post.last
user1 = User.first
user2 = User.last

PostComment.create!(
  content: Faker::Lorem.sentence,
  post:,
  user: user1
)

PostComment.create!(
  content: Faker::Lorem.sentence,
  post:,
  user: user2
)

PostComment.create!(
  ancestry: PostComment.last.child_ancestry,
  content: Faker::Lorem.sentence,
  post:,
  user: user1
)

PostComment.create!(
  ancestry: PostComment.last.child_ancestry,
  content: Faker::Lorem.sentence,
  post:,
  user: user2
)
