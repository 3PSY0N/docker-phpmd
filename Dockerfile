FROM php:7.4-cli

RUN apt-get update && apt-get install -y libbz2-dev
RUN docker-php-ext-install bz2

RUN curl -O https://phpmd.org/static/latest/phpmd.phar
RUN mv phpmd.phar /usr/local/bin/phpmd
RUN chmod +x /usr/local/bin/phpmd

RUN mkdir -p /workspace
WORKDIR /workspace

ENTRYPOINT ["phpmd"]
