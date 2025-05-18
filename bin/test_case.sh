#!/usr/bin/env bash

export SKIP_SEEDS=true

RED='\033[0;31m'
NC='\033[0m'

#=== PostgreSQL Section

echo -e "\033[33;5;7mUsing PostgreSQL...${NC}"
echo -e "${RED}1 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop:pg_db db:create:pg_db db:migrate:pg_db && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop:pg_db db:create:pg_db db:migrate:pg_db && bundle exec rspec spec/models/user_spec.rb:23
#bin/rails db:drop:pg_db db:create:pg_db db:migrate:pg_db && bundle exec rspec spec/models/user_spec.rb:23

echo -e "${RED}2 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop:pg_db db:create:pg_db db:schema:load:pg_db && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop:pg_db db:create:pg_db db:schema:load:pg_db && bundle exec rspec spec/models/user_spec.rb:23
#bin/rails db:drop:pg_db db:create:pg_db db:schema:load:pg_db && bundle exec rspec spec/models/user_spec.rb:23

# Does not work. https://blog.saeloun.com/2021/10/27/rails-7-adds-database-specific-setup/#limitation
#echo -e "${RED}3 ==============${NC}"
#echo "RAILS_ENV=test bin/rails db:drop:pg_db db:create:pg_db db:setup:pg_db && bundle exec rspec spec/models/user_spec.rb:23"
#RAILS_ENV=test bin/rails db:drop:pg_db db:create:pg_db db:setup:pg_db && bundle exec rspec spec/models/user_spec.rb:23
#bin/rails db:drop:pg_db db:create:pg_db db:setup:pg_db && bundle exec rspec spec/models/user_spec.rb:23

#=== MySQL Section

echo -e "\033[33;5;7mUsing MySQL...${NC}"
echo -e "${RED}1 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop:mysql_db db:create:mysql_db db:migrate:mysql_db && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop:mysql_db db:create:mysql_db db:migrate:mysql_db && bundle exec rspec spec/models/user_spec.rb:23
#bin/rails db:drop:mysql_db db:create:mysql_db db:migrate:mysql_db && bundle exec rspec spec/models/user_spec.rb:23

echo -e "${RED}2 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop:mysql_db db:create:mysql_db db:schema:load:mysql_db && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop:mysql_db db:create:mysql_db db:schema:load:mysql_db && bundle exec rspec spec/models/user_spec.rb:23
#bin/rails db:drop:mysql_db db:create:mysql_db db:schema:load:mysql_db && bundle exec rspec spec/models/user_spec.rb:23

# Does not work. https://blog.saeloun.com/2021/10/27/rails-7-adds-database-specific-setup/#limitation
#echo -e "${RED}3 ==============${NC}"
#echo "RAILS_ENV=test bin/rails db:drop:mysql_db db:create:mysql_db db:setup:mysql_db && bundle exec rspec spec/models/user_spec.rb:23"
#RAILS_ENV=test bin/rails db:drop:mysql_db db:create:mysql_db db:setup:mysql_db && bundle exec rspec spec/models/user_spec.rb:23
#bin/rails db:drop:mysql_db db:create:mysql_db db:setup:mysql_db && bundle exec rspec spec/models/user_spec.rb:23

#=== ALL DATABASES

echo -e "\033[33;5;7mUsing All RDBMS...${NC}"
echo -e "${RED}4 ==============${NC}"
echo "RAILS_ENV=test bin/rails db:drop db:create db:prepare db:test:prepare && bundle exec rspec spec/models/user_spec.rb:23"
RAILS_ENV=test bin/rails db:drop db:create db:prepare db:test:prepare && bundle exec rspec spec/models/user_spec.rb:23
#bin/rails db:drop:pg_db db:create:pg_db db:prepare db:test:prepare && bundle exec rspec spec/models/user_spec.rb:23
