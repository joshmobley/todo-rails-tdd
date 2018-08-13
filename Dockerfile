FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /todo-rails
WORKDIR /todo-rails
COPY Gemfile /todo-rails/Gemfile
COPY Gemfile.lock /todo-rails/Gemfile.lock
RUN bundle install
COPY . /todo-rails
