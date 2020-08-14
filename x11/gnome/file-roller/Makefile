# $OpenBSD: Makefile,v 1.145 2020/08/14 17:14:47 jasper Exp $

COMMENT=	archive manager utility for GNOME

GNOME_PROJECT=	file-roller
GNOME_VERSION=	3.36.3

CATEGORIES=	archivers

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += archive c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-3 intl json-glib-1.0 m nautilus-extension
WANTLIB += notify pango-1.0

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

BUILD_DEPENDS=	archivers/gcpio

RUN_DEPENDS=	archivers/gcpio \
		archivers/gtar \
		archivers/p7zip \
		archivers/unzip \
		archivers/xz \
		archivers/zip \
		sysutils/cdrtools

# "The Unarchiver" has not been ported to OpenBSD yet
RUN_DEPENDS +=	archivers/unrar

LIB_DEPENDS=	archivers/libarchive>=3.1.2 \
		devel/json-glib \
		devel/libnotify \
		x11/gnome/nautilus

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp

DEBUG_PACKAGES =${BUILD_PACKAGES}

.include <bsd.port.mk>
