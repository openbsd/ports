# $OpenBSD: Makefile,v 1.10 2017/11/30 16:16:24 jeremy Exp $

COMMENT =	monitor PostgreSQL activity & statistics

DISTNAME =	pg_statsinfo-3.3.0
CATEGORIES =	databases

HOMEPAGE =	http://pgstatsinfo.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pgstatsinfo/}

USE_GMAKE =	Yes
MAKE_FLAGS =	USE_PGXS=1 CFLAGS="-DPG_USE_INLINE" LDFLAGS=-lkvm

BUILD_DEPENDS =	databases/postgresql,-server
LIB_DEPENDS =	databases/postgresql

WANTLIB += c kvm pq pthread

.include <bsd.port.mk>
