FROM node:lts-alpine

# Install Ruby
RUN apk update && apk upgrade && apk --update add -–no-cache \
    git \
    bash \
    curl \
    wget \
    zip \
    unzip \
    ruby \
    ruby-rdoc \
    ruby-irb \
    ruby-dev \
    openssh \
    g++ \
    make \
    ruby-rake \
    ruby-io-console \
    ruby-bigdecimal \
    ruby-json \
    ruby-bundler \
    libstdc++ \
    tzdata \
    bash \
    ca-certificates \
    &&  echo 'gem: --no-document' > /etc/gemrc

# Install Fastlane
RUN gem install fastlane

# Cleanup GEMs to make image smaller
RUN gem cleanup 

# Install Expo CLI
RUN yarn global add expo-cli
