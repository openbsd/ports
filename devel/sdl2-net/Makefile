# $OpenBSD: Makefile,v 1.6 2018/01/12 19:32:54 bentley Exp $

V =		2.0.1
COMMENT =	SDL2 cross-platform networking library
DISTNAME =	SDL2_net-${V}
PKGNAME =	sdl2-net-${V}
CATEGORIES =	devel net
REVISION =	0

SHARED_LIBS +=	SDL2_net		0.0 # 0.0

HOMEPAGE =	https://www.libsdl.org/projects/SDL_net/

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2 m pthread sndio usbhid

MASTER_SITES =	https://www.libsdl.org/projects/SDL_net/release/

LIB_DEPENDS =	devel/sdl2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-gui

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
