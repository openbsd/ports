# $OpenBSD: Makefile,v 1.12 2015/04/30 07:22:39 ajacoutot Exp $

COMMENT=	C++ wrapper for gtksourceview3

GNOME_PROJECT=	gtksourceviewmm
GNOME_VERSION=	3.12.0
PKGNAME=	${GNOME_PROJECT}3-${GNOME_VERSION}

MAJOR_VERSION=	3.0
SUBST_VARS+=	MAJOR_VERSION

SHARED_LIBS +=	gtksourceviewmm-3.0    0.0      # .0.0

CATEGORIES=	x11

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atkmm-1.6
WANTLIB += atspi cairo cairo-gobject cairomm-1.0 dbus-1 epoxy
WANTLIB += expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gdkmm-3.0 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-3 gtkmm-3.0 gtksourceview-3.0
WANTLIB += harfbuzz lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pangomm-1.4 pcre pixman-1 png pthread pthread-stubs
WANTLIB += sigc-2.0 stdc++ xcb xcb-render xcb-shm xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	x11/gtksourceview3 \
		x11/gtk3mm

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
