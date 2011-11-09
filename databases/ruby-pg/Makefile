# $OpenBSD: Makefile,v 1.15 2011/11/09 00:17:38 jeremy Exp $

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-0.11.0
CATEGORIES =	databases
REVISION =	1

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

WANTLIB =	pq
LIB_DEPENDS =	databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
