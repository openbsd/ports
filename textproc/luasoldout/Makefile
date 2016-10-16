# $OpenBSD: Makefile,v 1.4 2016/10/16 23:21:23 jca Exp $

COMMENT =		Lua binding to libsoldout

DISTNAME =		luasoldout-0.2
CATEGORIES =		textproc

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://github.com/jturner/luasoldout/
MASTER_SITES =		http://calminferno.net/lua/

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/lua

FLAVORS =		lua52 lua53
FLAVOR ?=

MAKE_FLAGS =		LUAINC="-I${MODLUA_INCL_DIR}"
FAKE_FLAGS =		DESTDIR=""

pre-configure:
	sed -i 's,/usr/bin/env lua,${MODLUA_BIN},' ${WRKSRC}/test.lua

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/soldout.so ${MODLUA_LIBDIR}

.include <bsd.port.mk>
