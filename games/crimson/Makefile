# $OpenBSD: Makefile,v 1.31 2018/06/27 21:03:45 espie Exp $

COMMENT=	tactical war game like Battle Isle; multiplayer
DISTNAME=	crimson-0.5.3
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}files/
REVISION=	1

HOMEPAGE=	http://crimson.seul.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += SDL SDL_mixer SDL_net SDL_ttf c m pthread ${COMPILER_LIBCXX} z

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
