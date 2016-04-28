# $OpenBSD: Makefile,v 1.32 2016/04/28 07:22:18 ajacoutot Exp $

COMMENT=	code assistance for Gedit

GNOME_PROJECT=	gedit-code-assistance
GNOME_VERSION=	3.16.0
REVISION=	0

CATEGORIES=	editors devel

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 harfbuzz epoxy
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm xml2 z lzma iconv intl

MODULES=	x11/gnome

MODGNOME_TOOLS +=	gobject-introspection vala
LIB_DEPENDS=	devel/libgee

BUILD_DEPENDS=	x11/gnome/gedit>=3.14.0

RUN_DEPENDS=	x11/gnome/code-assistance \
		x11/gnome/gedit>=3.14.0

post-install:
	rm ${PREFIX}/lib/gedit/plugins{,/gca/indent-backends}/*.{a,la}

.include <bsd.port.mk>
