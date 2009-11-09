# $OpenBSD: Makefile,v 1.10 2009/11/09 17:09:22 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	access a SQLite3 database from ruby

VERSION=	1.2.4
DISTNAME=	sqlite3-ruby-${VERSION}
PKGNAME=	ruby-sqlite3-${VERSION}p0
CATEGORIES=	databases

HOMEPAGE=	http://sqlite-ruby.rubyforge.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=sqlite-ruby/}

MODULES=		lang/ruby

WANTLIB=		c m

# swig is needed to build the native extension
BUILD_DEPENDS=		::devel/swig
LIB_DEPENDS=		sqlite3.>=8:sqlite3->=3.3.4:databases/sqlite3 \
			${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE=	ruby gem

REGRESS_DEPENDS=	::devel/ruby-mocha \
			::${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/tests.rb

.include <bsd.port.mk>
