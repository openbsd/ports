# $OpenBSD: Makefile,v 1.34 2017/04/04 21:40:40 jeremy Exp $

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-0.20.0
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	pq
LIB_DEPENDS =	databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
