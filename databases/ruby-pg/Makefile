# $OpenBSD: Makefile,v 1.8 2010/11/15 00:22:54 espie Exp $

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-0.9.0
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

WANTLIB =	pq ssl crypto com_err
LIB_DEPENDS =	databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
