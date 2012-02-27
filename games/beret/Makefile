# $OpenBSD: Makefile,v 1.1.1.1 2012/02/27 22:07:49 schwarze Exp $

COMMENT=	2D puzzle-platformer game
DISTNAME=	beret-1.2.1
CATEGORIES=	games x11

HOMEPAGE=	http://kiwisauce.com/beret/

MAINTAINER=	Brian Callahan <bcallah@devio.us>

# LGPLv3
# AveriaSans-regular.ttf: SIL Open Font License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c m SDL SDL_image SDL_mixer
WANTLIB += SDL_ttf pthread

MASTER_SITES=	http://devio.us/~bcallah/

LIB_DEPENDS=	devel/sdl \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf

MAKE_FLAGS=	CC="${CC}" CFLAGS="${CFLAGS}"
CFLAGS+=	-I${LOCALBASE}/include \
		-I${LOCALBASE}/include/SDL -Wall

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
