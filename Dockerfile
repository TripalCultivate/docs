FROM ruby:3.3.4

# Add Jekyll dependencies to Alpine
RUN apt-get update
RUN apt-get install build-essential zlib1g-dev git

# Update the Ruby bundler and install Jekyll
RUN gem update bundler && gem install bundler jekyll

COPY . /workspace/docs
WORKDIR /workspace/docs

RUN bundle install \
  && bundle update

EXPOSE 4000
