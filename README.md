# Proof of Concept for ARFI gem

This project is a demonstration of using [ARFI](https://github.com/unurgunite/arfi) gem

* [Proof of Concept for ARFI gem](#proof-of-concept-for-arfi-gem)
    * [Usage](#usage)
    * [Installation](#installation)
    * [Requirements](#requirements)

## Usage

This project uses PostgreSQL database by default. In future updates there will be other database support.

## Installation

1. Run `bundle install`
2. Run `docker compose up -d` to start the database.
3. Run `bundle exec rails db:create db:migrate db:seed`
4. Wait about 10 minutes for the results.
5. Run `bundle exec rails c` and type `User.find_by_domain('gmail.com').explain(:analyze)` to see the results.

## Requirements

* Ruby 3.4.2
* Rails 7.2.2.1
* PostgreSQL 14
* Docker
