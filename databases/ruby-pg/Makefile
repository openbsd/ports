# $OpenBSD: Makefile,v 1.5 2010/10/06 16:26:57 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-0.9.0
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m

MODULES =	lang/ruby

LIB_DEPENDS =	pq.>=2::databases/postgresql \
		${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE = ruby gem

.include <bsd.port.mk>
