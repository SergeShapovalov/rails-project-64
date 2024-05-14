# frozen_string_literal: true

return if User.any?

require 'devise/encryptor'

password = 'password'
%w[
  test1@test.com
  test2@test.com
].each { |email| User.create!(email:, password:, password_confirmation: password) }
