# $OpenBSD: Makefile,v 1.35 2012/04/30 12:48:11 landry Exp $

COMMENT-main=	Xfce4 theme engine for Gtk+2
COMMENT-gtk3=	Xfce4 theme engine for Gtk+3

XFCE_PROJECT=	gtk-xfce-engine
XFCE_VERSION=	3.0.0

MULTI_PACKAGES = -main -gtk3
PKGNAME-main =	${PKGNAME}
PKGNAME-gtk3 =	gtk3-xfce-engine-${XFCE_VERSION}

HOMEPAGE=	http://www.xfce.org/projects/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4

LIB_DEPENDS-main =	x11/gtk+2
LIB_DEPENDS-gtk3 =	x11/gtk+3>=3.2

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes GL Xxf86vm drm xcb-shm \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig stdc++ \
		freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z pthread-stubs xcb \
		gdk_pixbuf-2.0 gthread-2.0 xcb-render ffi

WANTLIB-main =	${WANTLIB} gdk-x11-2.0 gtk-x11-2.0
WANTLIB-gtk3 =	${WANTLIB} cairo-gobject gdk-3 gtk-3

.include <bsd.port.mk>
