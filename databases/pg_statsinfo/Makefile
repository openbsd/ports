# $OpenBSD: Makefile,v 1.15 2022/01/13 16:01:29 jeremy Exp $

COMMENT =	monitor PostgreSQL activity & statistics

DISTNAME =	pg_statsinfo-13.0
CATEGORIES =	databases

HOMEPAGE =	http://pgstatsinfo.sourceforge.net/

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pgstatsinfo/}

USE_GMAKE =	Yes
MAKE_FLAGS =	USE_PGXS=1 CFLAGS="-DPG_USE_INLINE" LDFLAGS=-lkvm

BUILD_DEPENDS =	databases/postgresql,-server
LIB_DEPENDS =	databases/postgresql

WANTLIB += c kvm pq pthread

.include <bsd.port.mk>
