# $OpenBSD: Makefile,v 1.34 2011/05/02 19:01:10 landry Exp $

COMMENT =	lightweight web browser

XFCE_VERSION =	0.3.5
XFCE_GOODIE =	midori

MAINTAINER =	Landry Breuil <landry@openbsd.org>
CATEGORIES =	www

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/xfce4 devel/waf

DESKTOP_FILES =	Yes
NO_REGRESS =	Yes

LIB_DEPENDS =	www/webkit>=1.1.15v0 \
		devel/libnotify \
		databases/sqlite3 \
		devel/libunique \
		devel/libsoup>=2.28.0

RUN_DEPENDS =	xfce4-icon-theme-*|tango-icon-theme-*|gnome-icon-theme-*:x11/tango-icon-theme

# pick sqlite
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"

BUILD_DEPENDS =	textproc/py-docutils \
		lang/vala \
		x11/gnome/librsvg

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 intl \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread sqlite3 z \
		cairo pixman-1 png pthread-stubs xcb xml2 \
		Xss xcb-render webkit-1.0 notify sqlite3 unique-1.0 soup-2.4 \
		GL Xxf86vm drm xcb-shm tasn1


.include <bsd.port.mk>
