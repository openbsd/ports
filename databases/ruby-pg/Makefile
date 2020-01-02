# $OpenBSD: Makefile,v 1.41 2020/01/02 23:07:28 jeremy Exp $

COMMENT =	PostgreSQL database interface for ruby

DISTNAME =	pg-1.2.1
CATEGORIES =	databases

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/BSD License
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

WANTLIB =	pq
LIB_DEPENDS =	databases/postgresql

CONFIGURE_STYLE = ruby gem ext

.include <bsd.port.mk>
