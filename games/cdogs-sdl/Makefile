# $OpenBSD: Makefile,v 1.6 2019/07/12 20:46:15 sthen Exp $

COMMENT =	open source, classic overhead run-and-gun game
DISTNAME =	cdogs-sdl-0.5.5.1
CATEGORIES =	games x11
REVISION =	2

HOMEPAGE =	http://cxong.github.io/cdogs-sdl/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_net c m pthread

MASTER_SITES =	http://mirrors.nycbug.org/pub/distfiles/

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-net

RUN_DEPENDS =	devel/desktop-file-utils

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/cdogs/sys_config.h

post-build:
	@cp ${WRKBUILD}/src/cdogs-sdl ${WRKSRC}/src/cdogs-sdl
	@cp ${WRKBUILD}/src/cdogs-sdl-editor ${WRKSRC}/src/cdogs-sdl-editor

.include <bsd.port.mk>
