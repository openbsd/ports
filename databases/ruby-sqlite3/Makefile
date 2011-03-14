# $OpenBSD: Makefile,v 1.20 2011/03/14 17:45:50 jeremy Exp $

COMMENT=	access a SQLite3 database from ruby

VERSION=	1.3.3
DISTNAME=	sqlite3-${VERSION}
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
			devel/ruby-hoe,${MODRUBY_FLAVOR} \
			converters/ruby-json,${MODRUBY_FLAVOR} \
			${MODRUBY_ICONV_DEPENDS} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

.include <bsd.port.mk>
