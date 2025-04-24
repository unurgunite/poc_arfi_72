FROM ruby:3.4.2

RUN apt-get update -qq && \
    apt-get install -y git nodejs graphviz poppler-utils libmagic-dev yarn npm libjemalloc2 less vim && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/apt/lists/* /root/.cache /tmp/*

RUN number_of_cores=$(nproc) && \
    bundle config --global jobs `expr $number_of_cores - 1`

COPY Gemfile* ./
COPY .ruby-version ./
RUN --mount=type=ssh bundle install
