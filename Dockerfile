FROM ruby:2.2.10
RUN mkdir /app
WORKDIR /app
ADD . /home/k8svp/lesson3/app
RUN bundle install
CMD bundle exec puma config.ru -p80
