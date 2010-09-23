# $OpenBSD: Makefile,v 1.6 2010/09/23 22:30:25 jeremy Exp $

COMMENT =		lightweight ORM library for Ruby

DISTNAME =		sequel-3.6.0
PKGNAME =		ruby-${DISTNAME}
REVISION =		0
CATEGORIES =		databases

HOMEPAGE =		http://sequel.rubyforge.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=sequel/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::databases/ruby-sqlite3
MODRUBY_REGRESS =	rake rspec
RAKE_REGRESS_TARGET =	spec spec_sqlite

.include <bsd.port.mk>
