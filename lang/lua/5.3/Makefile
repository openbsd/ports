# $OpenBSD: Makefile,v 1.1.1.1 2015/01/14 20:06:36 jturner Exp $

VERSION=	5.3.0
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
