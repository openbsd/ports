V =		1.0.4
COMMENT =	primitives drawing/other support functions for SDL2
DISTNAME =	SDL2_gfx-${V}
PKGNAME =	sdl2-gfx-${V}
CATEGORIES =	devel graphics x11
REVISION =	0

SHARED_LIBS +=  SDL2_gfx             1.0      # 0.1
SHARED_LIBS +=  SDL2_gfx-1.0         1.0      # 0.1

HOMEPAGE =	http://www.ferzkopp.net/joomla/content/view/19/14/

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2 m pthread sndio usbhid
WANTLIB += X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender Xss 
WANTLIB += Xxf86vm samplerate xcb

SITES =		${SITE_SOURCEFORGE:=sdl2gfx/}

LIB_DEPENDS =	devel/sdl2

CONFIGURE_STYLE =	autoreconf

.if ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "i386"
CONFIGURE_ARGS +=	--disable-mmx
.endif

AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.11

.include <bsd.port.mk>
