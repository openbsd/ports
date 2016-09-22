# $OpenBSD: Makefile,v 1.2 2016/09/22 12:57:18 fcambus Exp $

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
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =	*

MODULES =	lang/lua

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR} ${MODLUA_DATADIR}/lustache
	${INSTALL_DATA} ${WRKSRC}/src/*.lua ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/lustache/*.lua ${MODLUA_DATADIR}/lustache

.include <bsd.port.mk>
