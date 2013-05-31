# $OpenBSD: Makefile,v 1.28 2013/05/31 15:35:24 ajacoutot Exp $

COMMENT=	Xfce4 xkb layout switcher panel plugin

XFCE_VERSION=	0.5.4.3
XFCE_PLUGIN=	xkb
REVISION =	2

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
LIB_DEPENDS =	x11/gnome/librsvg \
		x11/gnome/libxklavier

WANTLIB += GL ICE SM X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo croco-0.6 drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs rsvg-2 startup-notification-1 wnck-1
WANTLIB += xcb xcb-aux xcb-render xcb-shm xfce4ui-1 xfce4util
WANTLIB += xkbfile xklavier xml2 z stdc++
WANTLIB += harfbuzz

.include <bsd.port.mk>
