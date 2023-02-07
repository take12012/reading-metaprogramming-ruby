FROM ruby:2.6.5-alpine

RUN apk update
RUN gem install bundler
RUN gem update --system 3.2.3
COPY Gemfile Gemfile.lock ./
RUN bundle install --jobs 4 --retry 3
COPY Rakefile ./
RUN exec rake

WORKDIR /usr/src/app

COPY . .
