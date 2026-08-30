# uncomment when 5.6 is added to ports
#PORTROACH=	limit:^5\.5

VERSION=	5.5.1
PKGSPEC=	lua->=5.5,<5.6

SHARED_LIBS=	lua5.5 ${VERSION:R}

WANTLIB=	c m edit curses

SUBST_VARS+=	VERSION

MAKE_FLAGS+=	LIBlua5.5_VERSION="${LIBlua5.5_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_DATA} -c ${FILESDIR}/lua55.pc ${PREFIX}/lib/pkgconfig/lua55.pc
	${SUBST_DATA} -c ${FILESDIR}/lua55.pc ${PREFIX}/lib/pkgconfig/lua5.5.pc
	ln ${PREFIX}/bin/lua55 ${PREFIX}/bin/lua5.5
	ln ${PREFIX}/bin/luac55 ${PREFIX}/bin/luac5.5

.include <bsd.port.mk>
