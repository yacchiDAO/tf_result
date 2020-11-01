FROM ruby:2.7.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# FIXME: your application name
ENV WORKDIR_HOME /rails_app

# rails 6ではyarnが必要
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN mkdir $WORKDIR_HOME
WORKDIR $WORKDIR_HOME
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
COPY . $WORKDIR_HOME
ADD . $HOME

CMD ["rails", "server", "-b", "0.0.0.0"]
