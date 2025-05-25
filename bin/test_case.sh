#!/usr/bin/env bash

set -e

export SKIP_SEEDS=true

RED='\033[0;31m'
NC='\033[0m'

echo -e "\033[33;5;7mUsing All RDBMS...${NC}"
echo -e "${RED}1 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop db:create db:prepare db:test:prepare && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop db:create db:prepare db:test:prepare && bundle exec rspec spec/models/user_spec.rb:23
#bin/rails db:drop:pg_db db:create:pg_db db:prepare db:test:prepare && bundle exec rspec spec/models/user_spec.rb:23

echo -e "${RED}2 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop db:reset && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop db:reset && bundle exec rspec spec/models/user_spec.rb:23
#bin/rails db:drop db:reset && bundle exec rspec spec/models/user_spec.rb:23

