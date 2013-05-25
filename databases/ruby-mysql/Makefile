# $OpenBSD: Makefile,v 1.26 2013/05/25 00:33:09 brad Exp $

COMMENT=	access a MySQL database from Ruby

DISTNAME=	mysql-2.8.1
REVISION=	12
CATEGORIES=	databases

HOMEPAGE=	http://tmtm.org/mysql/ruby/

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB=	mysqlclient crypto ssl z

LIB_DEPENDS=	databases/mariadb

CONFIGURE_STYLE=ruby gem ext

TEST_DEPENDS=databases/mariadb,-server

# A running mysqld is required to run the regression tests.
TEST_IS_INTERACTIVE = Yes

do-test:
	@cd ${WRKBUILD} && ${RUBY} test.rb

.include <bsd.port.mk>
