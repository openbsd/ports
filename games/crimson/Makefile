# $OpenBSD: Makefile,v 1.18 2009/08/10 06:31:41 kili Exp $

COMMENT=	tactical war game like Battle Isle; multiplayer
DISTNAME=	crimson-0.5.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://crimson.seul.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		SDL X11 Xext c m pthread pthread-stubs stdc++ usbhid \
			xcb z

USE_X11=	Yes
USE_GMAKE=	Yes

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	SDL_mixer::devel/sdl-mixer \
		SDL_net::devel/sdl-net \
		SDL_ttf::devel/sdl-ttf

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-bi2cf --enable-cfed --enable-comet

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
