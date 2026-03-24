BROKEN-hppa =	no atomic ops
COMMENT =	Midnight Commander-like file manager for X
DISTNAME =	worker-5.4.0
CATEGORIES =	x11

HOMEPAGE =	http://www.boomerangsworld.de/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE Imlib2 SM X11 X11-xcb Xext Xft
WANTLIB += Xinerama Xrender c crypto expat fontconfig freetype
WANTLIB += m ssl xcb xcb-shm z

SITES =		http://www.boomerangsworld.de/cms/worker/downloads/

# C++14
COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	graphics/imlib2

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/xli

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-avfs \
			--without-dbus \
			--without-hal \
			--without-libmagic \
			--disable-inotify \
			--disable-lua

.include <bsd.port.mk>
