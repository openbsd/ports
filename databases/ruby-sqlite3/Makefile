# $OpenBSD: Makefile,v 1.44 2019/11/12 06:40:37 jeremy Exp $

COMMENT=	access a SQLite3 database from ruby

DISTNAME=	sqlite3-1.4.1
CATEGORIES=	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE=	https://github.com/sparklemotion/sqlite3-ruby

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

WANTLIB=		sqlite3
LIB_DEPENDS=		databases/sqlite3

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=	rake
TEST_DEPENDS=	devel/ruby-mocha,${MODRUBY_FLAVOR} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC}/test && ${RUBY} -I . -e \
		"require 'sqlite3'; Dir['test_*.rb'].each{|f| load(f)}"

.include <bsd.port.mk>
