# $OpenBSD: Makefile,v 1.26 2014/07/12 12:06:49 kirby Exp $

BROKEN-arm=	mktileset buggy, loops at high CPU use

COMMENT=	tactical war game like Battle Isle; multiplayer
DISTNAME=	crimson-0.5.3
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}files/

HOMEPAGE=	http://crimson.seul.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL SDL_mixer SDL_net SDL_ttf c m pthread stdc++ z

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
