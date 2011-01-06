# $OpenBSD: Makefile,v 1.19 2011/01/06 04:24:22 jeremy Exp $

COMMENT=	access a MySQL database from Ruby

DISTNAME=	mysql-2.8.1
REVISION=	6
CATEGORIES=	databases

HOMEPAGE=	http://tmtm.org/mysql/ruby/

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

WANTLIB=	mysqlclient

LIB_DEPENDS=	databases/mysql

CONFIGURE_STYLE=ruby gem ext

REGRESS_DEPENDS=databases/mysql,-server

# A running mysqld is required to run the regression tests.
REGRESS_IS_INTERACTIVE = Yes

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test.rb

.include <bsd.port.mk>
