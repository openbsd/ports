# $OpenBSD: Makefile,v 1.29 2013/03/11 11:46:18 espie Exp $

COMMENT=	Xfce4 dictionary application

XFCE_VERSION=	0.6.0
XFCE_GOODIE=	xfce4-dict
REVISION=	8

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes
MODXFCE_ICON_CACHE=	Yes

LIB_DEPENDS=	x11/xfce4/xfce4-panel \
		x11/xfce4/libxfcegui4

# nothing in the dep chain provides librsvg, so explicitely depend on it
# so that the icon is correctly displayed
RUN_DEPENDS+=	x11/gnome/librsvg

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 xcb xcb-aux xcb-render xcb-shm
WANTLIB += xfce4panel-1.0 xfce4util xfcegui4 z stdc++
WANTLIB += harfbuzz icudata icule icuuc

.include <bsd.port.mk>
