# $OpenBSD: Makefile,v 1.6 2010/10/26 21:42:14 jeremy Exp $

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

MODULES =	lang/ruby

WANTLIB =	pq.>=2
LIB_DEPENDS =	::databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
