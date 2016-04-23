# $OpenBSD: Makefile,v 1.1.1.1 2016/04/23 22:23:18 awolk Exp $

COMMENT =	Markdown markup system implementation in pure Lua

V =		0.33
PKGNAME =	lua-markdown-${V}

GH_ACCOUNT =	mpeterv
GH_PROJECT =	markdown
GH_TAGNAME =	${V}

CATEGORIES =	textproc

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

PKG_ARCH =	*

MODULES =	lang/lua

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/markdown.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
