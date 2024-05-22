setup: install

install:
	bundle install
	yarn install
	bundle exec rails db:create db:migrate assets:precompile assets:clean

test:
	bundle exec rake test

lint:
	bundle exec rubocop

slim-lint:
	slim-lint app/views/

.PHONY: test
