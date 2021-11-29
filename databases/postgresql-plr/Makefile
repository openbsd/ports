# $OpenBSD: Makefile,v 1.8 2021/11/29 20:01:03 sthen Exp $

COMMENT =		R procedural language for PostgreSQL

VERSION =		8.4.1
GH_ACCOUNT =		postgres-plr
GH_PROJECT =		plr
GH_TAGNAME =		REL${VERSION:S/./_/g}

PKGNAME =		postgresql-plr-${VERSION}

CATEGORIES =		databases

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c lib/R/lib/R

BUILD_DEPENDS =		databases/postgresql,-server
RUN_DEPENDS =		databases/postgresql,-server
LIB_DEPENDS =		math/R

MAKE_ENV =		USE_PGXS=1

USE_GMAKE =		Yes

.include <bsd.port.mk>
