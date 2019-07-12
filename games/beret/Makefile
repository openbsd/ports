# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:14 sthen Exp $

COMMENT=	2D puzzle-platformer game
DISTNAME=	beret-1.2.1pl1
REVISION=	1
CATEGORIES=	games x11

HOMEPAGE=	http://kiwisauce.com/beret/

# LGPLv3
# AveriaSans-regular.ttf: SIL Open Font License
PERMIT_PACKAGE=	Yes

WANTLIB += c m SDL SDL_image SDL_mixer
WANTLIB += SDL_ttf pthread

MASTER_SITES=	http://mirrors.nycbug.org/pub/distfiles/

LIB_DEPENDS=	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}" LDFLAGS="${LDFLAGS}"
NO_TEST=	Yes
ALL_TARGET=	beret
CFLAGS+=	-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/SDL -Wall
LDFLAGS+=	-pthread -L${LOCALBASE}/lib -L${X11BASE}/lib

do-configure:
	${SUBST_CMD} ${WRKSRC}/game.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/beret ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/beret
	${INSTALL_DATA} ${WRKSRC}/lgpl-3.0.txt ${PREFIX}/share/doc/beret
	${INSTALL_DATA} ${WRKSRC}/OFL.txt ${PREFIX}/share/doc/beret
	${INSTALL_DATA} ${WRKSRC}/FONTLOG.txt ${PREFIX}/share/doc/beret
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/beret
	${INSTALL_DATA_DIR} ${PREFIX}/share/beret
	${INSTALL_DATA} ${WRKSRC}/AveriaSans-Regular.ttf ${PREFIX}/share/beret
	${INSTALL_DATA_DIR} ${PREFIX}/share/beret/images
	${INSTALL_DATA} ${WRKSRC}/images/* ${PREFIX}/share/beret/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/beret/music
	${INSTALL_DATA} ${WRKSRC}/music/* ${PREFIX}/share/beret/music
	${INSTALL_DATA_DIR} ${PREFIX}/share/beret/rooms
	${INSTALL_DATA} ${WRKSRC}/rooms/* ${PREFIX}/share/beret/rooms
	${INSTALL_DATA_DIR} ${PREFIX}/share/beret/sfx
	${INSTALL_DATA} ${WRKSRC}/sfx/* ${PREFIX}/share/beret/sfx

.include <bsd.port.mk>
