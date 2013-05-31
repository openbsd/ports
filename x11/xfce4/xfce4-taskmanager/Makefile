# $OpenBSD: Makefile,v 1.13 2013/05/31 15:35:23 ajacoutot Exp $

COMMENT=	Xfce4 task manager and system monitor

XFCE_VERSION=	1.0.0
XFCE_GOODIE=	xfce4-taskmanager
REVISION=	7

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_DESKTOP_FILE=	Yes

LIB_DEPENDS=	x11/gtk+2 \
		devel/libwnck

WANTLIB += GL X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 wnck-1 xcb xcb-aux xcb-render
WANTLIB += xcb-shm z stdc++
WANTLIB += harfbuzz

.include <bsd.port.mk>
