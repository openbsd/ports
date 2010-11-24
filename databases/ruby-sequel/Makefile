# $OpenBSD: Makefile,v 1.11 2010/11/24 21:35:13 jeremy Exp $

COMMENT =		lightweight ORM library for Ruby

DISTNAME =		sequel-3.16.0
REVISION =		1
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

REGRESS_DEPENDS =	databases/ruby-sqlite3
MODRUBY_REGRESS =	rake rspec
RAKE_REGRESS_TARGET =	spec spec_plugin spec_sqlite

.include <bsd.port.mk>
