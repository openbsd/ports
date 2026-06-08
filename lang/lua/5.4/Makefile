# uncomment when 5.5 is added to ports
#PORTROACH=	limit:^5\.4

VERSION=	5.4.8
REVISION=	1
PKGSPEC=	lua->=5.4,<5.5

SHARED_LIBS=	lua5.4 ${VERSION:R}

WANTLIB=	c m edit curses

SUBST_VARS+=	VERSION

MAKE_FLAGS+=	LIBlua5.4_VERSION="${LIBlua5.4_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_DATA} -c ${FILESDIR}/lua54.pc ${PREFIX}/lib/pkgconfig/lua54.pc
	${SUBST_DATA} -c ${FILESDIR}/lua54.pc ${PREFIX}/lib/pkgconfig/lua5.4.pc
	ln ${PREFIX}/bin/lua54 ${PREFIX}/bin/lua5.4
	ln ${PREFIX}/bin/luac54 ${PREFIX}/bin/luac5.4

.include <bsd.port.mk>
