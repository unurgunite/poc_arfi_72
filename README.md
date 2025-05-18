# Proof of Concept for ARFI gem

This project is a demonstration of using [ARFI](https://github.com/unurgunite/arfi) gem

* [Proof of Concept for ARFI gem](#proof-of-concept-for-arfi-gem)
    * [Usage](#usage)
    * [Installation](#installation)
    * [Requirements](#requirements)

## Usage

This project uses PostgreSQL database by default. In future updates there will be other database support.

## Installation

1. Run `bundle install`;
2. Run `docker compose up -d` to start the project;
3. Run `docker compose exec web /bin/bash`;
4. Run `docker compose exec web ./bin/test_case.sh`;
5. Tests should be passed.
6. Also run `bundle exec rails db:seed && bundle exec rails c` and type
   `User.find_by_domain('gmail.com').explain(:analyze)` to see the results.

## Requirements

* Ruby 3.4.2
* Rails 7.2.2.1
* PostgreSQL 14
* MySQL 9
* Docker
