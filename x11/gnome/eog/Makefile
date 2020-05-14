# $OpenBSD: Makefile,v 1.156 2020/05/14 15:11:18 jasper Exp $

COMMENT=		Eye of GNOME, image viewing and cataloging program

GNOME_PROJECT=		eog
GNOME_VERSION=		3.36.2

CATEGORIES=		graphics

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += X11 c cairo exempi exif gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gnome-desktop-3 gobject-2.0
WANTLIB += gtk-3 intl jpeg lcms2 m peas-1.0 peas-gtk-1.0 rsvg-2
WANTLIB += z

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

BUILD_DEPENDS=		devel/gsettings-desktop-schemas

LIB_DEPENDS=		devel/libpeas \
			graphics/lcms2 \
			graphics/libexif \
			textproc/exempi \
			x11/gnome/desktop

RUN_DEPENDS=		devel/gsettings-desktop-schemas

MODGNOME_TOOLS += desktop-file-utils gobject-introspection yelp
MODGNOME_TOOLS += gtk-update-icon-cache shared-mime-info

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
