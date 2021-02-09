# $OpenBSD: Makefile,v 1.7 2021/02/09 20:03:40 jeremy Exp $

COMMENT =		R procedural language for PostgreSQL

VERSION =		8.4.1
DISTNAME =		REL8_4_1
PKGNAME =		postgresql-plr-${VERSION}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/postgres-plr/plr

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c lib/R/lib/R

MASTER_SITES =		https://github.com/postgres-plr/plr/archive/

BUILD_DEPENDS =		databases/postgresql,-server
RUN_DEPENDS =		databases/postgresql,-server
LIB_DEPENDS =		math/R

MAKE_ENV =		USE_PGXS=1

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/plr-${DISTNAME}

.include <bsd.port.mk>
