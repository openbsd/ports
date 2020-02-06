# $OpenBSD: Makefile,v 1.6 2020/02/06 00:36:58 jeremy Exp $

COMMENT =		R procedural language for PostgreSQL

VERSION =		8.4
DISTNAME =		REL8_4
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
