V =		2.2.0
COMMENT =	SDL2 cross-platform networking library
DISTNAME =	SDL2_net-${V}
PKGNAME =	sdl2-net-${V}
CATEGORIES =	devel net

SHARED_LIBS +=	SDL2_net		1.0 # 0.0

HOMEPAGE =	https://www.libsdl.org/projects/SDL_net/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 X11 Xcursor Xext Xfixes Xi Xrandr Xrender Xss
WANTLIB += m pthread samplerate sndio usbhid xcb

SITES =		https://www.libsdl.org/projects/SDL_net/release/

LIB_DEPENDS =	devel/sdl2

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-gui

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
