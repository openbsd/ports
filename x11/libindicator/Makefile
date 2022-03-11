V =		12.10.1
COMMENT =	convenience functions for desktop indicators
DISTNAME =	libindicator-${V}
CATEGORIES =	x11

SHARED_LIBS +=	indicator3                0.0 # 7.0

HOMPAGE =	https://launchpad.net/libindicator
MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gtk-3 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xcb xcb-render
WANTLIB += xcb-shm z

COMPILER =	base-clang ports-gcc

MASTER_SITES =  https://launchpad.net/libindicator/${V:R}/${V}/+download/

LIB_DEPENDS =	x11/gtk+3

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-gtk=3

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
