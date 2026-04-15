FROM ruby:3.2

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd -g 1000 vscode && \
    useradd -m -u 1000 -g vscode vscode

WORKDIR /usr/src/app

RUN chown -R vscode:vscode /usr/src/app

USER vscode

COPY Gemfile ./

RUN gem install connection_pool:2.5.0
RUN gem install bundler:2.3.26
RUN bundle install

CMD ["make", "serve"]
