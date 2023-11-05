COMMENT=		helper library for geocoding services

GNOME_VERSION=		3.26.4
GNOME_PROJECT=		geocode-glib
PKGNAME=		${GNOME_PROJECT}2-${GNOME_VERSION}
REVISION=		2

SHARED_LIBS += geocode-glib-2            0.0 # 0.0.0

CATEGORIES=		geo

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=		Yes

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection gtk-update-icon-cache

CONFIGURE_ARGS=		-Denable-gtk-doc=false \
			-Denable-installed-tests=false \
			-Dsoup2=false

WANTLIB += gio-2.0 glib-2.0 gobject-2.0 intl json-glib-1.0 m soup-3.0

LIB_DEPENDS=		devel/json-glib \
			devel/libsoup3

PORTHOME=		${WRKDIST}

.include <bsd.port.mk>
