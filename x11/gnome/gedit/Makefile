# $OpenBSD: Makefile,v 1.134 2015/04/15 09:40:53 ajacoutot Exp $

COMMENT=		lightweight GNOME text editor

GNOME_PROJECT=		gedit
GNOME_VERSION=		3.16.1
REVISION=		0

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
WANTLIB += pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm xml2 z lzma epoxy

MODULES=		devel/dconf \
			devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=		devel/libpeas>=1.8.0 \
			textproc/enchant \
			x11/gtksourceview3>=3.14.0

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			devel/py-gobject3${MODPY_FLAVOR} \
			x11/gnome/gvfs #--enable-gvfs-metadata

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS += 	desktop-file-utils gobject-introspection vala yelp

CONFIGURE_ARGS=		--disable-updater

TEST_IS_INTERACTIVE=	X11

post-install:
	rm ${PREFIX}/lib/gedit/{,plugins}/*.{a,la}

.include <bsd.port.mk>
