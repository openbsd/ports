# $OpenBSD: Makefile,v 1.3 2003/09/25 06:25:13 jolan Exp $

COMMENT=	"2.5 dimensional tetris-like game"

DISTNAME=	${PKGNAME}.src
PKGNAME=	xwelltris-1.0.1
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}src/

HOMEPAGE=	http://xnc.dubna.su/xwelltris/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes
USE_X11=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

CONFIGURE_STYLE=gnu

FLAVORS=	no_sdl
FLAVOR?=

.if ${FLAVOR:L:Mno_sdl}
CONFIGURE_ARGS+=--with-x
.else
CONFIGURE_ARGS+=--with-sdl
LIB_DEPENDS=	SDL_image::devel/sdl-image
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xwelltris ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/xwelltris
	${INSTALL_DATA} ${WRKSRC}/data/*.{dat,gif} \
		${WRKSRC}/README.keys ${PREFIX}/share/xwelltris

.include <bsd.port.mk>
