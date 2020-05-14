# $OpenBSD: Makefile,v 1.108 2020/05/14 15:13:14 jasper Exp $

COMMENT=		plugins for Gedit

GNOME_PROJECT=		gedit-plugins
GNOME_VERSION=		3.36.2

CATEGORIES=		editors

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 gtksourceview-4
WANTLIB += intl peas-1.0 peas-gtk-1.0

MODULES=		devel/dconf \
			devel/meson \
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

CONFIGURE_ARGS =	-Dplugin_zeitgeist=false

# vala needed by findinfile plugin
MODGNOME_TOOLS +=	vala yelp

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
