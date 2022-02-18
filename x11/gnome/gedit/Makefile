# $OpenBSD: Makefile,v 1.180 2022/02/18 08:33:43 sthen Exp $

COMMENT=		lightweight GNOME text editor

GNOME_PROJECT=		gedit
GNOME_VERSION=		41.0
REVISION=		0

CATEGORIES=		editors

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gobject-2.0 gspell-1 gtk-3 gtksourceview-4
WANTLIB += intl m pango-1.0 peas-1.0 peas-gtk-1.0 xml2

COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c

MODULES=		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes \
			devel/libsoup \
			devel/py-gobject3${MODPY_FLAVOR}

LIB_DEPENDS=		devel/libpeas \
			textproc/gspell \
			x11/gtksourceview4

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			devel/iso-codes

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS +=		devel/py-gobject3${MODPY_FLAVOR}

MODGNOME_TOOLS += 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

TEST_IS_INTERACTIVE=	X11

.include <bsd.port.mk>
