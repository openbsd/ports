# $OpenBSD: Makefile,v 1.25 2013/03/11 11:07:38 espie Exp $

BROKEN-arm=	mktileset buggy, loops at high CPU use

COMMENT=	tactical war game like Battle Isle; multiplayer
DISTNAME=	crimson-0.5.1
PKGNAME=	${DISTNAME}
REVISION =	2
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://crimson.seul.org/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		SDL X11 Xext c m pthread pthread-stubs stdc++ usbhid \
			xcb z SDL_mixer SDL_net SDL_ttf

USE_GMAKE=	Yes
USE_GROFF =	Yes

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-bi2cf --enable-cfed --enable-comet

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/*.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
