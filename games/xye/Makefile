# $OpenBSD: Makefile,v 1.5 2017/07/26 22:45:22 sthen Exp $

COMMENT =	puzzle game collecting diamonds and avoiding obstacles
DISTNAME =	xye-0.12.2
CATEGORIES =	games x11
REVISION =	1

HOMEPAGE =	http://xye.sourceforge.net/

# zlib
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xye/}

WANTLIB += SDL SDL_image SDL_ttf c m pthread ${COMPILER_LIBCXX}

LIB_DEPENDS =	devel/sdl-image \
		devel/sdl-ttf

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
