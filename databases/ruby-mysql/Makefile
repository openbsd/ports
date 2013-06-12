# $OpenBSD: Makefile,v 1.27 2013/06/12 20:36:33 brad Exp $

COMMENT=	access a MySQL database from Ruby

DISTNAME=	mysql-2.8.1
REVISION=	13
CATEGORIES=	databases

HOMEPAGE=	http://tmtm.org/mysql/ruby/

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB=	mysqlclient crypto ssl z

LIB_DEPENDS=	databases/mysql

CONFIGURE_STYLE=ruby gem ext

TEST_DEPENDS=databases/mysql,-server

# A running mysqld is required to run the regression tests.
TEST_IS_INTERACTIVE = Yes

do-test:
	@cd ${WRKBUILD} && ${RUBY} test.rb

.include <bsd.port.mk>
