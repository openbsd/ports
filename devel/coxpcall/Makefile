# $OpenBSD: Makefile,v 1.8 2015/06/19 16:24:06 jca Exp $

PKG_ARCH =	*

COMMENT =	encapsulate protected Lua calls with a coroutine based loop

DISTNAME =	coxpcall-1.13.0
PKGNAME =	lua-${DISTNAME}
REVISION=	4
CATEGORIES =	devel
HOMEPAGE =	http://coxpcall.luaforge.net/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://luaforge.net/frs/download.php/3406/

MODULES =		lang/lua
NO_BUILD =		Yes
NO_TEST =		Yes

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_DATADIR}
	${INSTALL_DATA} ${WRKSRC}/src/coxpcall.lua ${MODLUA_DATADIR}

.include <bsd.port.mk>
