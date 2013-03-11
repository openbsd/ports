# $OpenBSD: Makefile,v 1.29 2013/03/11 02:52:08 espie Exp $

COMMENT=	access a SQLite3 database from ruby

VERSION=	1.3.7
DISTNAME=	sqlite3-${VERSION}
CATEGORIES=	databases


MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE=	http://sqlite-ruby.rubyforge.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

WANTLIB=		sqlite3

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=	rake
TEST_DEPENDS=	devel/ruby-mocha,${MODRUBY_FLAVOR} \
			converters/ruby-json,${MODRUBY_FLAVOR} \
			${MODRUBY_ICONV_DEPENDS} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC}/test && ${RUBY} -I . -rubygems -e \
		"require 'sqlite3'; Dir['test_*.rb'].each{|f| load(f)}"

.include <bsd.port.mk>
