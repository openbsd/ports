# $OpenBSD: Makefile,v 1.3 2008/10/26 13:06:29 landry Exp $

COMMENT =	lightweight web browser

XFCE_VERSION =	0.1.0
XFCE_GOODIE =	midori

MAINTAINER =	Landry Breuil <gaston@gcu.info>
CATEGORIES =	www

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/xfce4 devel/waf

USE_X11 =	Yes
DESKTOP_FILES =	Yes

LIB_DEPENDS =	webkit-1.0::www/webkit \
		gtksourceview-2.0::x11/gtksourceview \
		sqlite3::databases/sqlite3 \
		unique-1.0::devel/libunique

# pick sqlite
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"
# disable gio/gvfs atm, still young
CONFIGURE_ARGS+=--disable-gio

BUILD_DEPENDS =	::textproc/py-docutils \
		::x11/gnome/librsvg

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 intl m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 sqlite3 z cairo pixman-1 png xml2

.include <bsd.port.mk>
