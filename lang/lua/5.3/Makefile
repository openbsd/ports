# The last release was Lua 5.3.6, released on 25 Sep 2020.
# There will be no further releases of Lua 5.3.
PORTROACH=	ignore:1

VERSION=	5.3.6
REVISION=	1
PKGSPEC=	lua->=5.3,<5.4

SHARED_LIBS=	lua5.3 ${VERSION:R}

WANTLIB=	c m edit curses

SUBST_VARS+=	VERSION

MAKE_FLAGS+=	LIBlua5.3_VERSION="${LIBlua5.3_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_DATA} -c ${FILESDIR}/lua53.pc ${PREFIX}/lib/pkgconfig/lua53.pc
	${SUBST_DATA} -c ${FILESDIR}/lua53.pc ${PREFIX}/lib/pkgconfig/lua5.3.pc
	ln ${PREFIX}/bin/lua53 ${PREFIX}/bin/lua5.3
	ln ${PREFIX}/bin/luac53 ${PREFIX}/bin/luac5.3

.include <bsd.port.mk>
