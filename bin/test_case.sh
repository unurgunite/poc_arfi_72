#!/usr/bin/env bash

export SKIP_SEEDS=true

RED='\033[0;31m'
NC='\033[0m'
echo -e "${RED}1 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop db:create db:migrate && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop db:create db:migrate && bundle exec rspec spec/models/user_spec.rb:23

echo -e "${RED}2 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop db:create db:schema:load && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop db:create db:schema:load && bundle exec rspec spec/models/user_spec.rb:23

echo -e "${RED}3 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop db:create db:setup && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop db:create db:setup && bundle exec rspec spec/models/user_spec.rb:23

echo -e "${RED}4 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop db:create db:prepare db:test:prepare && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop db:create db:prepare db:test:prepare && bundle exec rspec spec/models/user_spec.rb:23
