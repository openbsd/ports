# $OpenBSD: Makefile,v 1.45 2011/12/24 07:47:23 landry Exp $

COMMENT =	lightweight web browser

XFCE_VERSION =	0.4.3
XFCE_GOODIE =	midori

MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	www

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/xfce4 devel/waf

MODXFCE_DESKTOP_FILE =	Yes
MODXFCE_ICON_CACHE =	Yes
NO_REGRESS =	Yes

LIB_DEPENDS =	www/webkit>=1.6.1v0 \
		devel/libnotify \
		databases/sqlite3 \
		devel/libunique \
		devel/libsoup>=2.28.0

RUN_DEPENDS =	xfce4-icon-theme-*|tango-icon-theme-*|gnome-icon-theme-*:x11/tango-icon-theme

# pickup sqlite
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"

BUILD_DEPENDS =	textproc/py-docutils \
		lang/vala \
		x11/gnome/librsvg

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xss Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 javascriptcoregtk-1.0 m notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 unique-1.0 webkitgtk-1.0 xcb xcb-render
WANTLIB += xcb-shm xml2 z

.include <bsd.port.mk>
