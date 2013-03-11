# $OpenBSD: Makefile,v 1.3 2013/03/11 02:52:07 espie Exp $

SHARED_ONLY =		Yes

COMMENT =		Lua procedural language support for PostgreSQL

VERSION =		0.3.2
DISTNAME =		pllua-${VERSION}
PKGNAME =		postgresql-pllua-${VERSION}

CATEGORIES =		databases

HOMEPAGE =		http://pllua.projects.postgresql.org/

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c ${MODLUA_WANTLIB}

MASTER_SITES =		http://pgfoundry.org/frs/download.php/2401/

MODULES =		lang/lua
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		postgresql-server->=9.2,<9.3:databases/postgresql,-server

USE_GMAKE =		Yes

SUBST_VARS =		MODLUA_INCL_DIR MODLUA_WANTLIB

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
