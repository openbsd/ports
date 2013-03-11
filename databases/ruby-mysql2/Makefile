# $OpenBSD: Makefile,v 1.11 2013/03/11 02:52:08 espie Exp $

COMMENT=	modern, simple and very fast Mysql library for Ruby

DISTNAME=	mysql2-0.3.11
REVISION =	1
CATEGORIES=	databases

HOMEPAGE=	http://github.com/brianmario/mysql2

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

WANTLIB=	crypto mysqlclient ssl z

LIB_DEPENDS=	databases/mysql

CONFIGURE_STYLE=ruby gem ext

# Regress tests currently don't work, probably because they
# need RSpec2.  They also need a running MySQL server.
TEST_IS_INTERACTIVE = Yes
TEST_DEPENDS=databases/mysql,-server \
		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST=rake rspec

.include <bsd.port.mk>
