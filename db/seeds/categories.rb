# frozen_string_literal: true

return if Category.any?

%w[
  Музыка
  Кино
  Программирование
  История
  Фантастика
].each { |genre| Category.create!(name: genre) }
