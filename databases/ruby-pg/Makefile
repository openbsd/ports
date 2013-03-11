# $OpenBSD: Makefile,v 1.21 2013/03/11 02:52:08 espie Exp $

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-0.14.1
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB =	pq
LIB_DEPENDS =	databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
