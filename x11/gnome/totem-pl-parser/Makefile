# $OpenBSD: Makefile,v 1.85 2020/02/28 16:54:37 ajacoutot Exp $

COMMENT=		GObject-based parsing library

GNOME_PROJECT=		totem-pl-parser
GNOME_VERSION=		3.26.5

SHARED_LIBS +=  totem-plparser       19.0     # 18.3.4
SHARED_LIBS +=  totem-plparser-mini  18.0     # 18.3.4

CATEGORIES=		multimedia net textproc

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += archive c gcrypt gio-2.0 glib-2.0 gobject-2.0 intl
WANTLIB += quvi-0.9 xml2

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		archivers/libarchive \
			net/quvi/libquvi \
			security/libgcrypt \
			textproc/libxml

MODGNOME_TOOLS=		gobject-introspection

TEST_DEPENDS=		${BASE_PKGPATH}=${GNOME_VERSION}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
