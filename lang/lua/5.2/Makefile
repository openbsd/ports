# $OpenBSD: Makefile,v 1.5 2014/08/10 09:58:05 espie Exp $

VERSION=	5.2.3
PKGSPEC=	lua->=5.2,<5.3

SHARED_LIBS=	lua5.2 ${VERSION:R}

WANTLIB=	c m edit curses

SUBST_VARS+=	VERSION

MAKE_FLAGS+=	LIBlua5.2_VERSION="${LIBlua5.2_VERSION}"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pkgconfig
	${SUBST_DATA} -c ${FILESDIR}/lua52.pc \
		${PREFIX}/lib/pkgconfig/lua52.pc


.include <bsd.port.mk>
