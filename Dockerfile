FROM ruby:2.2.3
MAINTAINER Erich Rahm <erahm84@gmail.com>

RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /usr/src/app

ENV APP_HOME /usr/src/app
ADD . $APP_HOME
WORKDIR $APP_HOME
RUN bundle install

EXPOSE 80

CMD ruby main.rb
