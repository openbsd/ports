# $OpenBSD: Makefile,v 1.7 2015/05/22 11:31:16 ajacoutot Exp $

PORTROACH=	limit:^5\.1

VERSION=	5.1.5
PKGSPEC=	lua->=5.1,<5.2
REVISION=	5

SHARED_LIBS=	lua5.1 ${VERSION:R}

WANTLIB=	c m edit curses

MAKE_FLAGS+=	LIBlua5.1_VERSION="${LIBlua5.1_VERSION}"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/etc/lua.pc

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${INSTALL_DATA} ${WRKSRC}/etc/lua.pc ${PREFIX}/lib/pkgconfig/lua51.pc

.include <bsd.port.mk>
