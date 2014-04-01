# $OpenBSD: Makefile,v 1.121 2014/04/01 18:06:31 jasper Exp $

COMMENT=		lightweight GNOME text editor

GNOME_PROJECT=		gedit
GNOME_VERSION=		3.12.0
REVISION=		2

CATEGORIES=		editors

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 enchant expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += pthread pthread-stubs sqlite3 stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z zeitgeist-2.0

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=		devel/libpeas>=1.8.0 \
			productivity/zeitgeist>=0.9.14v0 \
			textproc/enchant \
			x11/gtksourceview3>=3.12.0

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/gvfs #--enable-gvfs-metadata

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODGNOME_TOOLS += gobject-introspection vala yelp  desktop-file-utils
CONFIGURE_ARGS=		--disable-updater

TEST_IS_INTERACTIVE=	X11

post-install:
	rm ${PREFIX}/lib/gedit/plugins/*.{a,la}

.include <bsd.port.mk>
