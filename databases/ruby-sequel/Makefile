# $OpenBSD: Makefile,v 1.23 2012/11/07 19:04:43 jeremy Exp $

COMMENT =		lightweight database library and ORM for Ruby

DISTNAME =		sequel-3.41.0
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
