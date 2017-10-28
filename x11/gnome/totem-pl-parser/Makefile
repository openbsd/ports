# $OpenBSD: Makefile,v 1.77 2017/10/28 13:28:06 ajacoutot Exp $

COMMENT=		GObject-based parsing library

GNOME_PROJECT=		totem-pl-parser
GNOME_VERSION=		3.26.0

SHARED_LIBS +=  totem-plparser       19.0     # 18.1.1
SHARED_LIBS +=  totem-plparser-mini  18.0     # 18.1.1

CATEGORIES=		multimedia net textproc

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += archive c gio-2.0 glib-2.0 gmime-3.0 gobject-2.0 intl
WANTLIB += quvi-0.9 xml2

MODULES=		devel/meson \
			x11/gnome

LIB_DEPENDS=		archivers/libarchive \
			mail/gmime30 \
			net/quvi/libquvi \
			textproc/libxml

MODGNOME_TOOLS=		gobject-introspection

TEST_DEPENDS=		${BASE_PKGPATH}=${GNOME_VERSION}

.include <bsd.port.mk>
