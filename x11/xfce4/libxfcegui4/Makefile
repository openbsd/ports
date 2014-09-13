# $OpenBSD: Makefile,v 1.45 2014/09/13 16:36:54 ajacoutot Exp $

COMMENT=	Xfce4 widget library

XFCE_VERSION =	4.10.0
XFCE_PROJECT=	libxfcegui4
REVISION=	3

SHARED_LIBS=	xfcegui4	5.0

HOMEPAGE=	http://www.xfce.org/projects/libraries

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4

MODXFCE_ICON_CACHE=	Yes
MODXFCE_PURGE_LA =	lib/libglade/2.0

LIB_DEPENDS=	x11/xfce4/libxfce4util>=4.8.0 \
		devel/startup-notification \
		devel/libglade2

# libxfcegui4 is deprecated, no point in integrating into glade UI
CONFIGURE_ARGS =	--disable-gladeui

WANTLIB += GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 cairo drm expat ffi fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs startup-notification-1
WANTLIB += xcb xcb-util xcb-render xcb-shm xfce4util xml2 z stdc++
WANTLIB += harfbuzz pthread

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfconf

.include <bsd.port.mk>
