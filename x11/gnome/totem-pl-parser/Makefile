# $OpenBSD: Makefile,v 1.88 2021/11/01 09:06:46 ajacoutot Exp $

COMMENT=		GObject-based parsing library

GNOME_PROJECT=		totem-pl-parser
GNOME_VERSION=		3.26.6
REVISION=		0

SHARED_LIBS +=  totem-plparser       19.0     # 18.3.5
SHARED_LIBS +=  totem-plparser-mini  18.0     # 18.3.5

CATEGORIES=		multimedia net textproc

# LGPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += archive gcrypt gio-2.0 glib-2.0 gobject-2.0 intl uchardet
WANTLIB += xml2

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		archivers/libarchive \
			devel/glib2 \
			security/libgcrypt \
			textproc/libxml \
			textproc/uchardet

MODGNOME_TOOLS=		gobject-introspection

TEST_DEPENDS=		${BASE_PKGPATH}=${GNOME_VERSION}

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
