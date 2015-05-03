FROM ruby:2.0

WORKDIR /work

EXPOSE 3000

# install dependencies
ADD Gemfile Gemfile.lock /work/
RUN bundler install

# make logs dir
RUN mkdir -p /work/logs

# copy src
ADD . /work

# run web server on $PORT
CMD rake db:migrate && rails server
