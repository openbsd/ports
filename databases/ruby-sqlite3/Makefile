# $OpenBSD: Makefile,v 1.22 2011/09/16 08:48:05 espie Exp $

COMMENT=	access a SQLite3 database from ruby

VERSION=	1.3.4
DISTNAME=	sqlite3-${VERSION}
CATEGORIES=	databases
REVISION =	0

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

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
			converters/ruby-json,${MODRUBY_FLAVOR} \
			${MODRUBY_ICONV_DEPENDS} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

do-regress:
	cd ${WRKSRC}/test && ${RUBY} -I . -rubygems -e \
		"require 'sqlite3'; Dir['test_*.rb'].each{|f| load(f)}"

.include <bsd.port.mk>
