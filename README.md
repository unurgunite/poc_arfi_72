# Proof of Concept for ARFI gem

This project is a demonstration of using ARFI gem

* [Proof of Concept for ARFI gem](#proof-of-concept-for-arfi-gem)
    * [Installation](#installation)
    * [Requirements](#requirements)

This project uses PostgreSQL database by default. There is also a demo for multi-db architecture use with MySQL along
with PostgreSQL available at separate branch `dynamic-database-use`

## Installation

1. Run `docker compose up -d` to initialize containers;
2. Run `docker compose exec web /bin/bash`;
3. Run `bundle exec rails db:create db:migrate db:seed` and wait for the results (you can skip running `db:seed`);
4. Run `bundle exec rails c` and type `User.find_by_domain('gmail.com').explain(:analyze)` to see the results.
5. If you want to use specs, run `./bin/test_case.sh`

## Requirements

* Ruby 3.4.4
* Rails 7.2.2.1
* PostgreSQL 14
* Docker
