# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:02 espie Exp $

PKG_ARCH =	*

COMMENT =	encapsulate protected Lua calls with a coroutine based loop

DISTNAME =	coxpcall-1.13.0
REVISION=	2
CATEGORIES =	devel
HOMEPAGE =	http://coxpcall.luaforge.net/

MAINTAINER =	Scott Vokes <vokes.s@gmail.com>

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
