PORTROACH=	limit:^5\.3

VERSION=	5.3.6
PKGSPEC=	lua->=5.3,<5.4

SHARED_LIBS=	lua5.3 ${VERSION:R}

WANTLIB=	c m edit curses

SUBST_VARS+=	VERSION

MAKE_FLAGS+=	LIBlua5.3_VERSION="${LIBlua5.3_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_DATA} -c ${FILESDIR}/lua53.pc \
		${PREFIX}/lib/pkgconfig/lua53.pc

.include <bsd.port.mk>
