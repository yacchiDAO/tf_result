FROM ruby:2.7.0
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && apt-get update && \
    apt-get install -y nodejs --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# FIXME: your application name
ENV WORKDIR_HOME /rails_app

# rails 6ではyarnが必要
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update && apt-get install -y yarn
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt-get install nodejs

RUN yarn add node-sass

RUN mkdir $WORKDIR_HOME
WORKDIR $WORKDIR_HOME
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
COPY . $WORKDIR_HOME
ADD . $HOME

CMD ["rails", "server", "-b", "0.0.0.0"]
