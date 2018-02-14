FROM perl

MAINTAINER Paul Williams <kwakwa@cpan.org>

WORKDIR /opt

RUN apt-get update -qq \
  && apt-get -y --no-install-recommends install postgresql-client

RUN cpanm DBI DBD::Pg Minion Mojo::Pg

COPY . /opt

EXPOSE 3000

ENTRYPOINT ["morbo", "minion.pl"]
