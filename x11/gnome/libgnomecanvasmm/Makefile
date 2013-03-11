# $OpenBSD: Makefile,v 1.30 2013/03/11 11:46:11 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	C++ interface to the graphics library for GNOME

GNOME_PROJECT=	libgnomecanvasmm
GNOME_VERSION=	2.26.0
REVISION=	6
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS +=  gnomecanvasmm-2.6         1.0 # 1.6

CATEGORIES=	x11

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm art_lgpl_2 atk-1.0
WANTLIB += atkmm-1.6 cairo cairomm-1.0 drm expat ffi fontconfig
WANTLIB += freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0 gnomecanvas-2
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 gtkmm-2.4 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre pixman-1
WANTLIB += png pthread-stubs sigc-2.0 stdc++ xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gnome/libgnomecanvas \
		x11/gtk2mm

.include <bsd.port.mk>
