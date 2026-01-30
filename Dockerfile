FROM httpd:2.4

# Enable .htaccess processing (AllowOverride) and mod_rewrite
RUN sed -i \
  -e 's/^#LoadModule rewrite_module/LoadModule rewrite_module/' \
  -e 's/AllowOverride None/AllowOverride All/' \
  /usr/local/apache2/conf/httpd.conf

# Copy your static site into Apache's docroot
COPY . /usr/local/apache2/htdocs/