FROM ruby:3.0

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -\
  && apt-get update -qq && apt-get install -qq --no-install-recommends \
    nodejs \
  && apt-get upgrade -qq \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*\
  && npm install -g yarn@1

WORKDIR /opt/resume

ADD config.* .
ADD package.json .
ADD webpack.config.js .
ADD Gemfile* .

RUN npm install
RUN bundle install --path vendor/bundle
