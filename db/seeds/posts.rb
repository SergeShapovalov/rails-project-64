# frozen_string_literal: true

return if Post.any?

posts = [
  {
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    category: Category.first,
    creator: User.first
  },
  {
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    category: Category.last,
    creator: User.last
  }
]

posts.each { Post.create!(_1) }
