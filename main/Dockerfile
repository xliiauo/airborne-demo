FROM ruby:2.4.1-alpine

WORKDIR /app

ADD . .

RUN apk --update add g++ musl-dev make &&\

RUN bundle install

EXPOSE 4567

CMD ["ruby", "app.rb"]
