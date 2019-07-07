# $OpenBSD: Makefile,v 1.163 2019/07/07 11:20:52 ajacoutot Exp $

COMMENT=		lightweight GNOME text editor

GNOME_PROJECT=		gedit
GNOME_VERSION=		3.32.2
REVISION=		0

CATEGORIES=		editors

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 atk-1.0 c cairo cairo-gobject enchant-2 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gspell-1 gtk-3 gtksourceview-4 intl m pango-1.0 pangocairo-1.0
WANTLIB += peas-1.0 peas-gtk-1.0 pthread xml2

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
			devel/iso-codes \
			x11/gnome/gvfs #--enable-gvfs-metadata

# MODPY_LIBDIR/gi/overrides/
RUN_DEPENDS +=		devel/py-gobject3${MODPY_FLAVOR}

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

MODGNOME_TOOLS += 	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache vala yelp

TEST_IS_INTERACTIVE=	X11

.include <bsd.port.mk>
