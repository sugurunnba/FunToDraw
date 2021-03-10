FROM ruby:2.5.7

RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       vim

RUN mkdir /FunToDraw

WORKDIR /FunToDraw

ADD Gemfile /FunToDraw/Gemfile
ADD Gemfile.lock /FunToDraw/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD . /FunToDraw

RUN mkdir -p tmp/sockets
RUN mkdir -p tmp/pids
