# $OpenBSD: Makefile,v 1.30 2015/04/21 18:51:24 sthen Exp $

COMMENT=	C++ bindings for libglade

GNOME_PROJECT=	libglademm
GNOME_VERSION=	2.6.7
EXTRACT_SUFX=	.tar.bz2

REVISION=	8

SHARED_LIBS +=	glademm-2.4          1.7      # .1.5

CATEGORIES=	devel

HOMEPAGE=	http://gtkmm.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atkmm-1.6 cairo cairomm-1.0 expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4
WANTLIB += gio-2.0 giomm-2.4 glade-2.0 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 gtkmm-2.4
WANTLIB += harfbuzz lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre pixman-1 png pthread pthread-stubs sigc-2.0
WANTLIB += stdc++ xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gtk2mm>=2.24.4 \
		devel/libglade2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-static

.include <bsd.port.mk>
