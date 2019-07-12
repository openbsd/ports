# $OpenBSD: Makefile,v 1.20 2019/07/12 20:46:28 sthen Exp $

COMMENT=	2.5 dimensional tetris-like game

DISTNAME=	xwelltris-1.0.1
DISTFILES=	${DISTNAME}.src.tar.gz
REVISION =	6
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}src/

HOMEPAGE=	http://xnc.jinr.ru/xwelltris/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=	Yes

CONFIGURE_STYLE=gnu

FLAVORS=	no_sdl
FLAVOR?=

.if ${FLAVOR:Mno_sdl}
CONFIGURE_ARGS+=--with-x
WANTLIB+=	ICE SM X11 Xext xcb
.else
CONFIGURE_ARGS+=--with-sdl
LIB_DEPENDS=	devel/sdl-image
WANTLIB+=	SDL pthread SDL_image
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xwelltris ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/xwelltris
	${INSTALL_DATA} ${WRKSRC}/data/*.{dat,gif} \
		${WRKSRC}/README.keys ${PREFIX}/share/xwelltris
	${INSTALL_DATA} /dev/null ${PREFIX}/share/xwelltris/welltris.scores.template

.include <bsd.port.mk>
