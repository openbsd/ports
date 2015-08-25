# $OpenBSD: Makefile,v 1.34 2015/08/25 12:57:33 sthen Exp $

COMMENT=	access a MySQL database from Ruby

DISTNAME=	mysql-2.9.1
REVISION=	0
CATEGORIES=	databases

HOMEPAGE=	http://tmtm.org/mysql/ruby/

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	databases/mariadb lang/ruby

WANTLIB=	mysqlclient crypto pthread ssl z

LIB_DEPENDS=	databases/mariadb

CONFIGURE_STYLE=ruby gem ext

TEST_ENV = \
	MYSQL_SOCK=${MODMARIADB_TEST_SOCKET} \
	RUBYLIB=${GEM_BASE_LIB}/gems/${DISTNAME}/lib

MODMARIADB_TEST_CMD =	${RUBY} ${WRKSRC}/test/test_mysql.rb

.include <bsd.port.mk>
