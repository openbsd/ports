# $OpenBSD: Makefile,v 1.29 2015/07/25 22:51:32 jeremy Exp $

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-0.18.2
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	pq
LIB_DEPENDS =	databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
