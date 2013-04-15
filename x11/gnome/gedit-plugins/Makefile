# $OpenBSD: Makefile,v 1.57 2013/04/15 12:43:38 ajacoutot Exp $

COMMENT=		plugins for Gedit

GNOME_PROJECT=		gedit-plugins
GNOME_VERSION=		3.8.0
REVISION=		1

CATEGORIES=		editors

HOMEPAGE=		http://live.gnome.org/Gedit/Plugins

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += cairo cairo-gobject dbus-1 expat ffi fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-3
WANTLIB += gtksourceview-3.0 harfbuzz icudata icule icuuc m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png pthread pthread-stubs xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/vte3 \
			textproc/gsed \
			x11/gnome/gedit \
			x11/gnome/gucharmap

LIB_DEPENDS=		devel/libpeas \
			x11/gtksourceview3

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/py-gobject3 \
			devel/vte3 \
			x11/gnome/gedit \
			x11/gnome/gucharmap

# synctex
RUN_DEPENDS +=		x11/dbus-python

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_ARGS+=	--disable-static

post-install:
	rm ${PREFIX}/lib/gedit/plugins/*.la

.include <bsd.port.mk>
