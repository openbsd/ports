# $OpenBSD: Makefile,v 1.33 2014/10/11 19:54:46 jeremy Exp $

COMMENT =		lightweight database library and ORM for Ruby

DISTNAME =		sequel-4.12.0
CATEGORIES =		databases
REVISION =		1

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
