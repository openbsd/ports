# $OpenBSD: Makefile,v 1.31 2013/04/07 13:03:16 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	C++ interface to the graphics library for GNOME

GNOME_PROJECT=	libgnomecanvasmm
GNOME_VERSION=	2.26.0
EXTRACT_SUFX=	.tar.bz2
REVISION=	7

SHARED_LIBS +=  gnomecanvasmm-2.6         1.0 # 1.6

CATEGORIES=	x11

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender art_lgpl_2 atk-1.0 atkmm-1.6 cairo cairomm-1.0
WANTLIB += expat ffi fontconfig freetype gailutil gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0
WANTLIB += glibmm-2.4 gmodule-2.0 gnomecanvas-2 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 gtkmm-2.4 harfbuzz icudata
WANTLIB += icule icuuc m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sigc-2.0 stdc++ xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gnome/libgnomecanvas \
		x11/gtk2mm>=2.24.3

.include <bsd.port.mk>
