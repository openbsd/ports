# $OpenBSD: Makefile,v 1.4 2004/11/28 23:32:07 espie Exp $

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
WANTLIB=		X11 Xext c m stdc++

NO_REGRESS=	Yes
USE_X11=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}

CONFIGURE_STYLE=gnu

FLAVORS=	no_sdl
FLAVOR?=

.if ${FLAVOR:L:Mno_sdl}
CONFIGURE_ARGS+=--with-x
WANTLIB+=		ICE SM
.else
CONFIGURE_ARGS+=--with-sdl
LIB_DEPENDS=	SDL_image::devel/sdl-image
WANTLIB+=	SDL pthread usbhid
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xwelltris ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/xwelltris
	${INSTALL_DATA} ${WRKSRC}/data/*.{dat,gif} \
		${WRKSRC}/README.keys ${PREFIX}/share/xwelltris

.include <bsd.port.mk>
