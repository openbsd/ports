# $OpenBSD: Makefile,v 1.26 2013/07/15 01:31:14 jeremy Exp $

COMMENT =		lightweight database library and ORM for Ruby

DISTNAME =		sequel-4.0.0
CATEGORIES =		databases

HOMEPAGE =		http://sequel.rubyforge.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

TEST_DEPENDS =	databases/ruby-sqlite3,${MODRUBY_FLAVOR}
MODRUBY_TEST =	rake rspec
MODRUBY_TEST_TARGET = spec spec_plugin spec_sqlite

.include <bsd.port.mk>
