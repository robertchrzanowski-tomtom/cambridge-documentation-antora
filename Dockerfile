FROM httpd:2.4
COPY ./build/site/ /usr/local/apache2/htdocs/