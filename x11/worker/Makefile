BROKEN-hppa =	no atomic ops
COMMENT =	Midnight Commander-like file manager for X
DISTNAME =	worker-5.0.2
CATEGORIES =	x11

HOMEPAGE =	http://www.boomerangsworld.de/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext Xft Xinerama Xrender
WANTLIB += c crypto expat fontconfig freetype m ssl xcb z

SITES =		http://www.boomerangsworld.de/cms/worker/downloads/

# C++14
COMPILER =	base-clang ports-clang ports-gcc

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
