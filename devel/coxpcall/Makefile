# $OpenBSD: Makefile,v 1.1.1.1 2009/08/15 17:34:36 jolan Exp $

COMMENT =	encapsulate protected Lua calls with a coroutine based loop

DISTNAME =	coxpcall-1.13.0
CATEGORIES =	devel
HOMEPAGE =	http://coxpcall.luaforge.net/

MAINTAINER =	Scott Vokes <vokes.s@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://luaforge.net/frs/download.php/3406/

MODULES =		lang/lua
NO_BUILD =		Yes
NO_REGRESS =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/lua/5.1/
	${INSTALL_DATA} ${WRKSRC}/src/coxpcall.lua ${PREFIX}/share/lua/5.1/

.include <bsd.port.mk>
