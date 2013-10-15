# $OpenBSD: Makefile,v 1.4 2013/10/15 02:21:13 jeremy Exp $

SHARED_ONLY =		Yes

COMMENT =		Lua procedural language support for PostgreSQL

VERSION =		1.0
DISTNAME =		pllua-${VERSION}
PKGNAME =		postgresql-pllua-${VERSION}

CATEGORIES =		databases

HOMEPAGE =		http://pllua.projects.postgresql.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ${MODLUA_WANTLIB}

MASTER_SITES =		http://pgfoundry.org/frs/download.php/3481/

MODULES =		lang/lua
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		postgresql-server->=9.3,<9.4:databases/postgresql,-server

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/pllua-0.3.2
SUBST_VARS =		MODLUA_INCL_DIR MODLUA_WANTLIB

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
