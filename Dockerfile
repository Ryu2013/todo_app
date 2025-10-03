FROM ruby:3.4
ENV APP /app
ENV LANG C.UTF-8
ENV TZ Asia/Tokyo
WORKDIR $APP
RUN apt-get update -qq && apt-get install -y build-essential nodejs npm \
    && npm install -g yarn \
    && gem install bundler \
    && gem install rails -v "7.2.2.1" \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*