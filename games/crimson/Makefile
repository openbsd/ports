# $OpenBSD: Makefile,v 1.33 2019/07/12 20:46:16 sthen Exp $

COMMENT=	tactical war game like Battle Isle; multiplayer
DISTNAME=	crimson-0.5.3
CATEGORIES=	games x11
MASTER_SITES=	${HOMEPAGE}files/
REVISION=	2

HOMEPAGE=	http://crimson.seul.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += SDL SDL_mixer SDL_net SDL_ttf c m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

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
