# The last release was Lua 5.1.5, released on 17 Feb 2012.
# There will be no further releases of Lua 5.1.
PORTROACH=	ignore:1

VERSION=	5.1.5
PKGSPEC=	lua->=5.1,<5.2
REVISION=	9

SHARED_LIBS=	lua5.1 ${VERSION:R}

WANTLIB=	c m edit curses

MAKE_FLAGS+=	LIBlua5.1_VERSION="${LIBlua5.1_VERSION}"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/lua.pc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/etc/lua.pc ${PREFIX}/lib/pkgconfig/lua51.pc
	${INSTALL_DATA} ${WRKSRC}/etc/lua.pc ${PREFIX}/lib/pkgconfig/lua5.1.pc
	ln ${PREFIX}/bin/lua51 ${PREFIX}/bin/lua5.1
	ln ${PREFIX}/bin/luac51 ${PREFIX}/bin/luac5.1

.include <bsd.port.mk>
