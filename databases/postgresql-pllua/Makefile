# $OpenBSD: Makefile,v 1.17 2021/02/10 15:53:11 jeremy Exp $

COMMENT =		Lua procedural language support for PostgreSQL

VERSION =		2.0.7
DISTNAME =		REL_2_0_7
PKGNAME =		postgresql-pllua-${VERSION}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/pllua/pllua

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c ${MODLUA_WANTLIB}

MASTER_SITES =		https://github.com/pllua/pllua/archive/

MODULES =		lang/lua
MODLUA_VERSION =	5.3

BUILD_DEPENDS =		${RUN_DEPENDS} \
			postgresql-client->=13,<14:databases/postgresql,-main
RUN_DEPENDS =		postgresql-server->=13,<14:databases/postgresql,-server

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/pllua-${DISTNAME}
SUBST_VARS =		MODLUA_INCL_DIR MODLUA_WANTLIB MODLUA_BIN LLD_EMUL

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
