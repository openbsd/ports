# $OpenBSD: Makefile,v 1.8 2009/08/10 06:31:43 kili Exp $

COMMENT=	2.5 dimensional tetris-like game

DISTNAME=	xwelltris-1.0.1
DISTFILES=	${DISTNAME}.src.tar.gz
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}src/

HOMEPAGE=	http://xnc.jinr.ru/xwelltris/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c m stdc++

NO_REGRESS=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu

FLAVORS=	no_sdl
FLAVOR?=

.if ${FLAVOR:L:Mno_sdl}
CONFIGURE_ARGS+=--with-x
WANTLIB+=	ICE SM X11 Xext pthread-stubs xcb
.else
CONFIGURE_ARGS+=--with-sdl
LIB_DEPENDS=	SDL_image::devel/sdl-image
WANTLIB+=	SDL pthread
.endif

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/xwelltris ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/xwelltris
	${INSTALL_DATA} ${WRKSRC}/data/*.{dat,gif} \
		${WRKSRC}/README.keys ${PREFIX}/share/xwelltris
	${INSTALL_DATA} /dev/null ${PREFIX}/share/xwelltris/welltris.scores.template

.include <bsd.port.mk>
