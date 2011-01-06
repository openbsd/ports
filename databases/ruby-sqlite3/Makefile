# $OpenBSD: Makefile,v 1.19 2011/01/06 04:24:22 jeremy Exp $

COMMENT=	access a SQLite3 database from ruby

VERSION=	1.3.1
DISTNAME=	sqlite3-ruby-${VERSION}
PKGNAME=	sqlite3-${VERSION}
REVISION =	1
CATEGORIES=	databases

HOMEPAGE=	http://sqlite-ruby.rubyforge.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

WANTLIB=		sqlite3
LIB_DEPENDS=		databases/sqlite3>=3.3.4

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_REGRESS=	rake
REGRESS_DEPENDS=	devel/ruby-mocha,${MODRUBY_FLAVOR} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
