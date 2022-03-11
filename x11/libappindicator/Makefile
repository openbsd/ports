V =		12.10.0
COMMENT =	library for exporting menus to a desktop environment
DISTNAME =	libappindicator-${V}
CATEGORIES =	x11

SHARED_LIBS +=	appindicator3              0.0 # 1.0

HOMPAGE =	https://launchpad.net/libappindicator
MAINTAINER =	Laurence Tratt <laurie@tratt.net>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0
WANTLIB += cairo cairo-gobject dbusmenu-glib dbusmenu-gtk3 epoxy
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gtk-3 harfbuzz iconv indicator3 intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png xcb xcb-render xcb-shm
WANTLIB += z

COMPILER =	base-clang ports-gcc

MASTER_SITES =  https://launchpad.net/libappindicator/${V:R}/${V}/+download/

LIB_DEPENDS =	x11/libdbusmenu \
		x11/libindicator \
		x11/gtk+3

CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS =	--with-gtk=3
AUTOCONF_VERSION =	2.69

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
