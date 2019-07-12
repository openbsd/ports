# $OpenBSD: Makefile,v 1.4 2019/07/12 20:50:01 sthen Exp $

COMMENT =	implementation of the mustache template system in Lua

V =		1.3.1
DISTNAME =	lustache-${V}
PKGNAME =	lua-${DISTNAME}
REVISION =	0

GH_ACCOUNT =	olivine-labs
GH_PROJECT =	lustache
GH_TAGNAME =	v${V}-0

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
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DATADIR}/lustache
	${INSTALL_DATA} ${WRKSRC}/src/*.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/lustache/*.lua ${MODLUA_DATADIR}/lustache

.include <bsd.port.mk>
