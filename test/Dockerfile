FROM ruby:2.4.1-alpine

WORKDIR /test

ADD Gemfile* ./

RUN apk --update add g++ musl-dev make

RUN bundle install
