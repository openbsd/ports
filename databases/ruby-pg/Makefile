# $OpenBSD: Makefile,v 1.42 2020/06/09 22:22:33 jeremy Exp $

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-1.2.3
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

WANTLIB =	pq
LIB_DEPENDS =	databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
