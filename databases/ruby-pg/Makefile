# $OpenBSD: Makefile,v 1.37 2018/06/13 22:26:52 jeremy Exp $

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-1.0.0
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	pq
LIB_DEPENDS =	databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
