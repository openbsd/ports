# $OpenBSD: Makefile,v 1.18 2021/10/12 18:50:17 sthen Exp $

COMMENT =		Lua procedural language support for PostgreSQL

VERSION =		2.0.7
GH_ACCOUNT =		pllua
GH_PROJECT =		pllua
GH_TAGNAME =		REL_${VERSION:S/./_/g}
PKGNAME =		postgresql-pllua-${VERSION}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/pllua/pllua

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c ${MODLUA_WANTLIB}

MODULES =		lang/lua
MODLUA_VERSION =	5.3

BUILD_DEPENDS =		${RUN_DEPENDS} \
			postgresql-client->=13,<14:databases/postgresql,-main
RUN_DEPENDS =		postgresql-server->=13,<14:databases/postgresql,-server

USE_GMAKE =		Yes

SUBST_VARS =		MODLUA_INCL_DIR MODLUA_WANTLIB MODLUA_BIN LLD_EMUL

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
