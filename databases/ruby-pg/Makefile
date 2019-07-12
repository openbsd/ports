# $OpenBSD: Makefile,v 1.40 2019/07/12 20:44:01 sthen Exp $

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-1.1.4
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

WANTLIB =	pq
LIB_DEPENDS =	databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
