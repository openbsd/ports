# $OpenBSD: Makefile,v 1.13 2010/10/26 21:17:49 jeremy Exp $

COMMENT=	access a SQLite3 database from ruby

VERSION=	1.2.4
DISTNAME=	sqlite3-ruby-${VERSION}
PKGNAME=	ruby-sqlite3-${VERSION}
REVISION =      1
CATEGORIES=	databases

HOMEPAGE=	http://sqlite-ruby.rubyforge.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

WANTLIB=		sqlite3.>=8
LIB_DEPENDS=		:sqlite3->=3.3.4:databases/sqlite3 

CONFIGURE_STYLE=	ruby gem ext

REGRESS_DEPENDS=	::devel/ruby-mocha \
			::${BASE_PKGPATH}

do-regress:
	@cd ${WRKBUILD} && ${RUBY} test/tests.rb

.include <bsd.port.mk>
