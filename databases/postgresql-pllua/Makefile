# $OpenBSD: Makefile,v 1.15 2020/02/06 00:36:47 jeremy Exp $

COMMENT =		Lua procedural language support for PostgreSQL

VERSION =		2.0.4
DISTNAME =		REL_2_0_4
PKGNAME =		postgresql-pllua-${VERSION}

CATEGORIES =		databases

HOMEPAGE =		https://github.com/pllua/pllua-ng

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c ${MODLUA_WANTLIB}

MASTER_SITES =		https://github.com/pllua/pllua-ng/archive/

MODULES =		lang/lua
MODLUA_VERSION =	5.3

BUILD_DEPENDS =		${RUN_DEPENDS} \
			postgresql-client->=12,<13:databases/postgresql,-main
RUN_DEPENDS =		postgresql-server->=12,<13:databases/postgresql,-server

USE_GMAKE =		Yes

WRKDIST =		${WRKDIR}/pllua-ng-REL_2_0_4
SUBST_VARS =		MODLUA_INCL_DIR MODLUA_WANTLIB MODLUA_BIN LLD_EMUL

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
