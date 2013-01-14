# $OpenBSD: Makefile,v 1.28 2013/01/14 23:25:08 jeremy Exp $

COMMENT=	access a SQLite3 database from ruby

VERSION=	1.3.7
DISTNAME=	sqlite3-${VERSION}
CATEGORIES=	databases


MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE=	http://sqlite-ruby.rubyforge.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

WANTLIB=		sqlite3

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_REGRESS=	rake
REGRESS_DEPENDS=	devel/ruby-mocha,${MODRUBY_FLAVOR} \
			converters/ruby-json,${MODRUBY_FLAVOR} \
			${MODRUBY_ICONV_DEPENDS} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

do-regress:
	cd ${WRKSRC}/test && ${RUBY} -I . -rubygems -e \
		"require 'sqlite3'; Dir['test_*.rb'].each{|f| load(f)}"

.include <bsd.port.mk>
