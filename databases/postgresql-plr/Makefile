# $OpenBSD: Makefile,v 1.1.1.1 2017/11/01 21:51:22 jeremy Exp $

COMMENT =		R procedural language for PostgreSQL

VERSION =		8.3.0.17
DISTNAME =		plr-${VERSION}
PKGNAME =		postgresql-plr-${VERSION}

CATEGORIES =		databases

HOMEPAGE =		http://www.joeconway.com/plr.html

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c lib/R/lib/R

MASTER_SITES =		http://www.joeconway.com/plr/doc/downloads/

BUILD_DEPENDS =		databases/postgresql,-server
RUN_DEPENDS =		databases/postgresql,-server
LIB_DEPENDS =		math/R

MAKE_ENV =		USE_PGXS=1

USE_GMAKE =		Yes

.include <bsd.port.mk>
