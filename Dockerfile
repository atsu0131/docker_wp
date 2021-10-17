FROM wordpress:latest

RUN curl -SL https://deb.nodesource.com/setup_14.x | bash
RUN apt-get install -y nodejs

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]