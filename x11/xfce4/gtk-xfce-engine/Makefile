# $OpenBSD: Makefile,v 1.41 2013/05/31 15:35:16 ajacoutot Exp $

COMMENT-main=	Xfce4 theme engine for Gtk+2
COMMENT-gtk3=	Xfce4 theme engine for Gtk+3

XFCE_PROJECT=	gtk-xfce-engine
XFCE_VERSION=	3.0.1

MULTI_PACKAGES = -main -gtk3
PKGNAME-main =	${PKGNAME}
REVISION-main =	1
PKGNAME-gtk3 =	gtk3-xfce-engine-${XFCE_VERSION}
REVISION-gtk3 =	1

HOMEPAGE=	http://www.xfce.org/projects/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/xfce4
MODXFCE_PURGE_LA =	lib/gtk-2.0/2.10.0/engines lib/gtk-3.0/3.0.0/theming-engines

LIB_DEPENDS-main =	x11/gtk+2
LIB_DEPENDS-gtk3 =	x11/gtk+3>=3.2

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes GL Xxf86vm drm xcb-shm \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig stdc++ \
		freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z pthread-stubs pthread xcb \
		gdk_pixbuf-2.0 gthread-2.0 xcb-render ffi harfbuzz

WANTLIB-main =	${WANTLIB} gdk-x11-2.0 gtk-x11-2.0
WANTLIB-gtk3 =	${WANTLIB} ICE SM atk-bridge-2.0 atspi dbus-1 cairo-gobject gdk-3 gtk-3

.include <bsd.port.mk>
