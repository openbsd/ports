# $OpenBSD: Makefile,v 1.17 2011/09/16 08:48:05 espie Exp $

COMMENT =		lightweight ORM library for Ruby

DISTNAME =		sequel-3.27.0
CATEGORIES =		databases
REVISION =		0

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
RAKE_REGRESS_TARGET =	spec spec_plugin spec_sqlite

.include <bsd.port.mk>
