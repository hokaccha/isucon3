#!/bin/sh -x
mysql -e "DELETE FROM user WHERE User=''; DROP DATABASE IF EXISTS isucon; CREATE DATABASE isucon DEFAULT CHARACTER SET utf8; GRANT ALL ON isucon.* to 'isucon'@'%'; FLUSH PRIVILEGES;" -u root mysql
mysql -u isucon isucon < isucon.dump.sql

