# $OpenBSD: Makefile,v 1.82 2019/03/05 13:14:54 ajacoutot Exp $

COMMENT=		GObject-based parsing library

GNOME_PROJECT=		totem-pl-parser
GNOME_VERSION=		3.26.3

SHARED_LIBS +=  totem-plparser       19.0     # 18.1.4
SHARED_LIBS +=  totem-plparser-mini  18.0     # 18.1.4

CATEGORIES=		multimedia net textproc

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive c gcrypt gio-2.0 glib-2.0 gobject-2.0 intl
WANTLIB += pthread quvi-0.9 xml2

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		archivers/libarchive \
			net/quvi/libquvi \
			security/libgcrypt \
			textproc/libxml

MODGNOME_TOOLS=		gobject-introspection

TEST_DEPENDS=		${BASE_PKGPATH}=${GNOME_VERSION}

.include <bsd.port.mk>
