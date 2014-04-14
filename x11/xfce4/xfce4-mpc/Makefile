# $OpenBSD: Makefile,v 1.24 2014/04/14 19:52:45 matthieu Exp $

COMMENT=	Xfce4 mpd client panel plugin

XFCE_VERSION=	0.4.4
XFCE_PLUGIN=	mpc
REVISION =	2

# BSD-ISC
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

CONFIGURE_ARGS=	--without-libmpd
LIB_DEPENDS +=	x11/xfce4/exo

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo exo-1 expat fontconfig pcre
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs
WANTLIB += xcb xcb-render xcb-shm xfce4util z stdc++ xcb-util xfce4ui-1
WANTLIB += ICE SM X11-xcb Xau Xdmcp Xxf86vm drm ffi startup-notification-1
WANTLIB += harfbuzz pthread

.include <bsd.port.mk>
