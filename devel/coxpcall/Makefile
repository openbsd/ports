# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:06 sthen Exp $

PKG_ARCH =	*

COMMENT =	encapsulate protected Lua calls with a coroutine based loop

DISTNAME =	coxpcall-1.13.0
PKGNAME =	lua-${DISTNAME}
REVISION=	4
CATEGORIES =	devel
HOMEPAGE =	http://coxpcall.luaforge.net/

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://luaforge.net/frs/download.php/3406/

MODULES =		lang/lua

FLAVORS =		lua52 lua53
FLAVORS ?=

NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/coxpcall.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
