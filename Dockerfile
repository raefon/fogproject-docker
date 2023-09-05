FROM alpine:latest
RUN apk update && \
    apk add bash openrc wget nfs-utils curl vsftpd tftp-hpa mariadb mariadb-client php php-pcntl php-posix php-bcmath php-sockets php-zip php-json php-curl php-ldap php-openssl php-session php-mysqli php-ftp php-fpm php-mbstring php-gd php-pdo php-pdo_mysql php-gettext nginx
ADD data /preinstall
ADD entry.sh /entry.sh
RUN chmod +x /entry.sh
CMD /entry.sh
