# The last release was Lua 5.2.4, released on 7 Mar 2015.
# There will be no further releases of Lua 5.2.
PORTROACH=	ignore:1

VERSION=	5.2.4
REVISION=	3
PKGSPEC=	lua->=5.2,<5.3

SHARED_LIBS=	lua5.2 ${VERSION:R}

WANTLIB=	c m edit curses

SUBST_VARS+=	VERSION

MAKE_FLAGS+=	LIBlua5.2_VERSION="${LIBlua5.2_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_DATA} -c ${FILESDIR}/lua52.pc ${PREFIX}/lib/pkgconfig/lua52.pc
	${SUBST_DATA} -c ${FILESDIR}/lua52.pc ${PREFIX}/lib/pkgconfig/lua5.2.pc
	ln ${PREFIX}/bin/lua52 ${PREFIX}/bin/lua5.2
	ln ${PREFIX}/bin/luac52 ${PREFIX}/bin/luac5.2

.include <bsd.port.mk>
