FROM ruby:2.2.4

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock

RUN bundle install

COPY . .

EXPOSE 3000
CMD ["bundle", "exec", "rackup", "-p", "3000"]
