COMMENT-main=		archive manager utility for GNOME
COMMENT-nautilus=	file-roller extension for Nautilus

GNOME_PROJECT=		file-roller
GNOME_VERSION=		43.0

PKGNAME-nautilus=	${GNOME_PROJECT}-nautilus-${GNOME_VERSION}

REVISION-main=		2
REVISION-nautilus=	1

CATEGORIES=		archivers

# GPLv2
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -nautilus

WANTLIB-main += archive c cairo gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gobject-2.0 gtk-3 handy-1 intl json-glib-1.0 m pango-1.0
WANTLIB-main += portal portal-gtk3

WANTLIB-nautilus += gio-2.0 glib-2.0 gobject-2.0 intl nautilus-extension

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		archivers/gcpio

RUN_DEPENDS-main=	${RUN_DEPENDS} \
			archivers/gcpio \
			archivers/gtar \
			archivers/p7zip \
			archivers/unzip \
			archivers/xz \
			archivers/zip \
			sysutils/cdrtools

# "The Unarchiver" has not been ported to OpenBSD yet
RUN_DEPENDS-main +=	archivers/unrar

LIB_DEPENDS-main=	archivers/libarchive \
			devel/json-glib \
			sysutils/libportal,-gtk3 \
			x11/libhandy

LIB_DEPENDS-nautilus=	x11/gnome/nautilus

RUN_DEPENDS-nautilus=	${BASE_PKGPATH},-main

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
