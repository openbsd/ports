# $OpenBSD: Makefile,v 1.35 2015/02/01 17:59:35 jeremy Exp $

COMMENT =		lightweight database library and ORM for Ruby

DISTNAME =		sequel-4.19.0
CATEGORIES =		databases

HOMEPAGE =		http://sequel.jeremyevans.net/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

.if defined(FLAVOR) && ${FLAVOR} == jruby
TEST_DEPENDS =	databases/ruby-jdbc-sqlite3,${MODRUBY_FLAVOR}
MODRUBY_TEST_ENV =	SEQUEL_SQLITE_URL=jdbc:sqlite::memory:
.else
TEST_DEPENDS =	databases/ruby-sqlite3,${MODRUBY_FLAVOR}
.endif
MODRUBY_TEST =	rake rspec
MODRUBY_TEST_TARGET = spec spec_plugin spec_sqlite spec_bin

.include <bsd.port.mk>
