# $OpenBSD: Makefile,v 1.18 2019/07/12 20:46:18 sthen Exp $

COMMENT=	one-player puzzle game for x11

VERSION=	0.9
DISTNAME=	gemdropx-${VERSION}
REVISION=	0
CATEGORIES=	games x11
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=	http://www.newbreedsoftware.com/gemdropx/

PERMIT_PACKAGE=	Yes
WANTLIB=		c m pthread SDL SDL_mixer

MASTER_SITES=	ftp://ftp.tuxpaint.org/unix/x/gemdropx/src/

LIB_DEPENDS=	devel/sdl-mixer

USE_GMAKE=	Yes
NO_TEST=	Yes
MAKE_ENV=	JOY=NO
MAKE_FLAGS=	CC="${CC}" CXX="${CC}" XTRA_FLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gemdropx ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/gemdropx/images
	${INSTALL_DATA} ${WRKSRC}/data/images/* ${PREFIX}/share/gemdropx/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/gemdropx/sounds
	${INSTALL_DATA} ${WRKSRC}/data/sounds/* ${PREFIX}/share/gemdropx/sounds
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gemdropx
	${INSTALL_DATA} ${WRKSRC}/README.txt ${PREFIX}/share/doc/gemdropx/README

.include <bsd.port.mk>
