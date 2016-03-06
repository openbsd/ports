# $OpenBSD: Makefile,v 1.15 2016/03/06 21:06:07 landry Exp $

COMMENT=	one-player puzzle game for x11

VERSION=	0.9
DISTNAME=	gemdropx-${VERSION}
CATEGORIES=	games x11

HOMEPAGE=	http://www.newbreedsoftware.com/gemdropx/

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m pthread SDL SDL_mixer

MASTER_SITES=	ftp://ftp.tuxpaint.org/unix/x/gemdropx/src/

LIB_DEPENDS=	devel/sdl-mixer

USE_GMAKE=	Yes
NO_TEST=	Yes
MAKE_ENV=	JOY=NO

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gemdropx ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/gemdropx/images
	${INSTALL_DATA} ${WRKSRC}/data/images/* ${PREFIX}/share/gemdropx/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/gemdropx/sounds
	${INSTALL_DATA} ${WRKSRC}/data/sounds/* ${PREFIX}/share/gemdropx/sounds
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gemdropx
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/gemdropx/README

.include <bsd.port.mk>
