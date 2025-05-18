FROM ruby:3.4.4-slim-bookworm

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev default-libmysqlclient-dev libyaml-dev git yarn libjemalloc2 less vim && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/apt/lists/* /root/.cache /tmp/*

RUN number_of_cores=$(nproc) && \
    bundle config --global jobs `expr $number_of_cores - 1`

WORKDIR /app
COPY . .
RUN echo 'gem: --no-document' >> ~/.gemrc
RUN bundle install

