# $OpenBSD: Makefile,v 1.16 2010/11/15 12:44:20 espie Exp $

COMMENT=	access a SQLite3 database from ruby

VERSION=	1.3.1
DISTNAME=	sqlite3-ruby-${VERSION}
PKGNAME=	sqlite3-${VERSION}
CATEGORIES=	databases

HOMEPAGE=	http://sqlite-ruby.rubyforge.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

WANTLIB=		sqlite3
LIB_DEPENDS=		sqlite3->=3.3.4:databases/sqlite3 

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_REGRESS=	rake
REGRESS_DEPENDS=	devel/ruby-mocha,${FLAVOR} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
