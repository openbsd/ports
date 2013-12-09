# $OpenBSD: Makefile,v 1.4 2013/12/09 07:43:08 jasper Exp $

VERSION=	5.2.3
PKGSPEC=	lua->=5.2,<5.3

SHARED_LIBS=	lua5.2 ${VERSION:R}

WANTLIB=	c m edit curses

SUBST_VARS+=	VERSION

MAKE_FLAGS+=	LIBlua5.2_VERSION="${LIBlua5.2_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_CMD} -o ${SHAREOWN} -g ${SHAREGRP} -c ${FILESDIR}/lua52.pc \
		${PREFIX}/lib/pkgconfig/lua52.pc


.include <bsd.port.mk>
