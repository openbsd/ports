VERSION=	5.4.7
PKGSPEC=	lua->=5.4,<5.5

SHARED_LIBS=	lua5.4 ${VERSION:R}

WANTLIB=	c m edit curses

SUBST_VARS+=	VERSION

MAKE_FLAGS+=	LIBlua5.4_VERSION="${LIBlua5.4_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_DATA} -c ${FILESDIR}/lua54.pc \
		${PREFIX}/lib/pkgconfig/lua54.pc

.include <bsd.port.mk>
