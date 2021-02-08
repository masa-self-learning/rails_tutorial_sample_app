FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /sample_app
COPY Gemfile Gemfile.lock /sample_app/
RUN bundle install