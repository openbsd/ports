# $OpenBSD: Makefile,v 1.14 2020/02/06 00:37:35 jeremy Exp $

COMMENT =	monitor PostgreSQL activity & statistics

DISTNAME =	pg_statsinfo-11.0
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
