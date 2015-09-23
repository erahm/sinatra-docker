FROM ruby:2.2.3
MAINTAINER Erich Rahm <erahm84@gmail.com>

RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /app

ENV APP_HOME /app
ADD . $APP_HOME
WORKDIR $APP_HOME
RUN bundle install

EXPOSE 80

ENTRYPOINT $APP_HOME/entrypoint.sh
