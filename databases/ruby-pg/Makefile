# $OpenBSD: Makefile,v 1.39 2019/03/27 17:45:52 jeremy Exp $

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-1.1.4
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	pq
LIB_DEPENDS =	databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
