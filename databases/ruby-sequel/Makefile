# $OpenBSD: Makefile,v 1.3 2009/05/19 22:50:57 bernd Exp $

COMMENT =		lightweight ORM library for Ruby

DISTNAME =		sequel-3.0.0
PKGNAME =		ruby-${DISTNAME}
CATEGORIES =		databases

HOMEPAGE =		http://sequel.rubyforge.org/

MAINTAINER =		Jeremy Evans <openbsd@jeremyevans.net>

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MASTER_SITES =		${MASTER_SITE_RUBYFORGE:=sequel/}

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	::devel/ruby-rake \
			::databases/ruby-sqlite3 \
			::devel/ruby-rspec

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake spec spec_sqlite integration

.include <bsd.port.mk>
