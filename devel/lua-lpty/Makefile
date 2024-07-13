COMMENT=	This is a simple wrapper around unix PTYs.

V=		1.2.2
SITES=		https://codeberg.org/gnarz/lpty/archive/
PKGNAME=	lua-lpty-${V}
DISTFILES=	lua-lpty{version_}${V}${EXTRACT_SUFX}

CATEGORIES=	devel
HOMEPAGE=	https://www.tset.de/lpty/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/lua
FLAVORS=	lua51 lua52 lua53 lua54
FLAVOR?=	lua51

USE_GMAKE=	Yes

MAKE_FLAGS +=	CC="${CC}" \
		LUA_INCDIR="${MODLUA_INCL_DIR}" \
		LUAVERSION="${MODLUA_VERSION}" \
		LUA="${MODLUA_BIN}"

WRKDIST=	${WRKDIR}/lpty/src

do-install:
	${INSTALL_DATA_DIR} ${MODLUA_LIBDIR}
	${INSTALL_DATA} ${WRKSRC}/lpty.so ${MODLUA_LIBDIR}

.include <bsd.port.mk>
