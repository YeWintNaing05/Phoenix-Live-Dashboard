FROM elixir:latest

RUN apt-get update && \
  apt-get install -y postgresql-client

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN mix local.hex --force

# Compile the project
RUN mix do compile

CMD ["/app/run.sh"]