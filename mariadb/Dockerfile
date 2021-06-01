FROM mariadb:10.6

ADD ./conf/my.cnf      /etc/mysql/my.cnf
ADD ./conf/debian.cnf  /etc/mysql/debian.cnf
ADD ./conf/mariadb.cnf /etc/mysql/mariadb.cnf

RUN chmod 644 /etc/mysql/my.cnf
RUN chmod 644 /etc/mysql/debian.cnf
RUN chmod 644 /etc/mysql/mariadb.cnf