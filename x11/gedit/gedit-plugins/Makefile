COMMENT=		plugins for Gedit

GNOME_PROJECT=		gedit-plugins
GNOME_VERSION=		46.0
REVISION=		1

WANTLIB += gedit-gtksourceview-300 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 peas-1.0 peas-gtk-1.0 tepl-6

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

MODGNOME_TOOLS=		yelp

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/libgit2/libgit2-glib>=0.0.6p0 \
			devel/vte3 \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/gedit/gedit \
			x11/gnome/gucharmap

# msgfmt: cannot locate ITS rules for plugins/bookmarks/gedit-bookmarks.metainfo.xml.in
BUILD_DEPENDS +=	devel/appstream-glib

LIB_DEPENDS=		devel/libpeas \
			x11/gedit/tepl

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/libgit2/libgit2-glib>=0.0.6p0 \
			devel/py-gobject3${MODPY_FLAVOR} \
			devel/vte3 \
			x11/dbus-python${MODPY_FLAVOR} \
			x11/gedit/gedit \
			x11/gnome/gucharmap

.include <bsd.port.mk>
