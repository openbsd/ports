# $OpenBSD: Makefile,v 1.81 2019/01/16 20:20:51 ajacoutot Exp $

COMMENT=		GObject-based parsing library

GNOME_PROJECT=		totem-pl-parser
GNOME_VERSION=		3.26.2

SHARED_LIBS +=  totem-plparser       19.0     # 18.1.3
SHARED_LIBS +=  totem-plparser-mini  18.0     # 18.1.3

CATEGORIES=		multimedia net textproc

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive c gcrypt gio-2.0 glib-2.0 gobject-2.0 intl
WANTLIB += quvi-0.9 xml2

MODULES=		devel/meson \
			x11/gnome

# XXX unused but meson checks for it
BUILD_DEPENDS=		devel/libsoup

LIB_DEPENDS=		archivers/libarchive \
			net/quvi/libquvi \
			security/libgcrypt \
			textproc/libxml

MODGNOME_TOOLS=		gobject-introspection

TEST_DEPENDS=		${BASE_PKGPATH}=${GNOME_VERSION}

.include <bsd.port.mk>
