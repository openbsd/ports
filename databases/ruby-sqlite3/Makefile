COMMENT=	access a SQLite3 database from ruby

DISTNAME=	sqlite3-1.5.4
CATEGORIES=	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

HOMEPAGE=	https://github.com/sparklemotion/sqlite3-ruby

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

WANTLIB=		sqlite3
LIB_DEPENDS=		databases/sqlite3
BUILD_DEPENDS=		devel/ruby-mini_portile2,${MODRUBY_FLAVOR}>=2.7.0,<3.0

CONFIGURE_STYLE=	ruby gem ext
CONFIGURE_ARGS=		--enable-system-libraries

MODRUBY_TEST=	rake
TEST_DEPENDS=	devel/ruby-mocha,${MODRUBY_FLAVOR} \
			${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	cd ${WRKSRC}/test && ${RUBY} -I . -e \
		"require 'sqlite3'; Dir['test_*.rb'].each{|f| load(f)}"

.include <bsd.port.mk>
