# $OpenBSD: Makefile,v 1.103 2019/05/09 02:19:48 ajacoutot Exp $

COMMENT=		plugins for Gedit

GNOME_PROJECT=		gedit-plugins
GNOME_VERSION=		3.32.0

CATEGORIES=		editors

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 atk-bridge-2.0 cairo cairo-gobject
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-3 gtksourceview-4 harfbuzz
WANTLIB += iconv intl lzma m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/libgit2/libgit2-glib>=0.0.6p0 \
			devel/vte3 \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/gnome/gedit>=3.14.0 \
			x11/gnome/gucharmap

# msgfmt: cannot locate ITS rules for plugins/bookmarks/gedit-bookmarks.metainfo.xml.in
BUILD_DEPENDS +=	devel/appstream-glib

LIB_DEPENDS=		devel/libpeas \
			x11/gtksourceview4

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/libgit2/libgit2-glib>=0.0.6p0 \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/vte3 \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/gnome/gedit>=3.14.0 \
			x11/gnome/gucharmap

MODGNOME_TOOLS +=	yelp

CONFIGURE_STYLE=	gnu

post-install:
	rm ${PREFIX}/lib/gedit/plugins/*.{a,la}

.include <bsd.port.mk>
