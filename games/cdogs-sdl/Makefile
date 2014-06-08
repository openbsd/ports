# $OpenBSD: Makefile,v 1.1.1.1 2014/06/08 02:53:49 bcallah Exp $

COMMENT =	open source, classic overhead run-and-gun game
DISTNAME =	cdogs-sdl-0.5.5.1
CATEGORIES =	games x11

HOMEPAGE =	http://cxong.github.io/cdogs-sdl/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_net c m pthread

MASTER_SITES =	http://devio.us/~bcallah/source/

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
