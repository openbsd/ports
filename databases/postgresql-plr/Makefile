# $OpenBSD: Makefile,v 1.2 2018/12/02 09:15:35 ajacoutot Exp $

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

BUILD_DEPENDS =		databases/postgresql,-server \
			databases/postgresql,-main
RUN_DEPENDS =		databases/postgresql,-server
LIB_DEPENDS =		math/R

MAKE_ENV =		USE_PGXS=1

USE_GMAKE =		Yes

.include <bsd.port.mk>
