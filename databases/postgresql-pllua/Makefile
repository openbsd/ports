# $OpenBSD: Makefile,v 1.14 2019/07/12 20:43:59 sthen Exp $

COMMENT =		Lua procedural language support for PostgreSQL

VERSION =		1.1.0
DISTNAME =		v${VERSION}
PKGNAME =		postgresql-pllua-${VERSION}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/pllua/pllua

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c ${MODLUA_WANTLIB}

MASTER_SITES =		https://github.com/pllua/pllua/archive/
MASTER_SITES0 =		https://github.com/pllua/pllua/commit/

PATCH_DIST_STRIP =	-p1
PATCHFILES =		3fcf91f71b8a8a6ceb46b59b132ed8d7cc81eb63.diff:0 \
			3d926a6b0117f168e7a29a18bb16110fea2957c2.diff:0

MODULES =		lang/lua
BUILD_DEPENDS =		${RUN_DEPENDS} \
			postgresql-client->=11,<12:databases/postgresql,-main
RUN_DEPENDS =		postgresql-server->=11,<12:databases/postgresql,-server

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/pllua-1.1.0
SUBST_VARS =		MODLUA_INCL_DIR MODLUA_WANTLIB

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
