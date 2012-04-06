# $OpenBSD: Makefile,v 1.20 2012/04/06 19:23:07 jeremy Exp $

COMMENT =		lightweight database library and ORM for Ruby

DISTNAME =		sequel-3.34.1
CATEGORIES =		databases

HOMEPAGE =		http://sequel.rubyforge.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	databases/ruby-sqlite3,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	rake rspec
MODRUBY_REGRESS_TARGET = spec spec_plugin spec_sqlite

.include <bsd.port.mk>
