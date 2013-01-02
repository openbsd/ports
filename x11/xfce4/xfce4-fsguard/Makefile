# $OpenBSD: Makefile,v 1.34 2013/01/02 17:12:22 landry Exp $

COMMENT =	Xfce4 disk usage monitor panel plugin

XFCE_VERSION =	1.0.1
XFCE_PLUGIN =	fsguard
REVISION =	0

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES =	x11/xfce4

MODXFCE_ICON_CACHE=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread-stubs xcb
WANTLIB += ICE SM X11-xcb Xau Xdmcp Xxf86vm drm ffi gthread-2.0
WANTLIB += pcre startup-notification-1 stdc++ xcb-aux xfce4ui-1
WANTLIB += xcb-render xcb-shm xfce4util z
WANTLIB += harfbuzz icudata icule icuuc pthread

.include <bsd.port.mk>
