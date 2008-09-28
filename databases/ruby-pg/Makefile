# $OpenBSD: Makefile,v 1.1.1.1 2008/09/28 16:03:41 bernd Exp $

SHARED_ONLY =	Yes

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-0.7.9.2008.08.17
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <openbsd@jeremyevans.net>

# Ruby/BSD License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=ruby-pg/}

MODULES =	lang/ruby

LIB_DEPENDS =	pq.>=2::databases/postgresql \
		${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
