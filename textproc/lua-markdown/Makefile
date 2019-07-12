# $OpenBSD: Makefile,v 1.5 2019/07/12 20:50:01 sthen Exp $

COMMENT =	Markdown markup system implementation in pure Lua

V =		0.33
PKGNAME =	lua-markdown-${V}
REVISION =	1

GH_ACCOUNT =	mpeterv
GH_PROJECT =	markdown
GH_TAGNAME =	${V}

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

PKG_ARCH =	*

MODULES =	lang/lua

FLAVORS =	lua52 lua53
FLAVOR ?=

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/markdown.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
