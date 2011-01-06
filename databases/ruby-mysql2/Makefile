# $OpenBSD: Makefile,v 1.3 2011/01/06 04:24:22 jeremy Exp $

COMMENT=	modern, simple and very fast Mysql library for Ruby

DISTNAME=	mysql2-0.2.6
REVISION =	0
CATEGORIES=	databases

HOMEPAGE=	http://github.com/brianmario/mysql2

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

WANTLIB=	mysqlclient

LIB_DEPENDS=	databases/mysql

CONFIGURE_STYLE=ruby gem ext

# Regress tests currently don't work, probably because they
# need RSpec2.  They also need a running MySQL server.
REGRESS_IS_INTERACTIVE = Yes
REGRESS_DEPENDS=databases/mysql,-server \
		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_REGRESS=rake rspec

.include <bsd.port.mk>
