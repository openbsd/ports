# $OpenBSD: Makefile,v 1.14 2014/04/01 18:06:29 jasper Exp $

COMMENT=	simple application for modifying PDF documents

GNOME_PROJECT=	pdfmod
GNOME_VERSION=	0.9.1
REVISION=	3

CATEGORIES=	graphics print

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/mono \
		x11/gnome

BUILD_DEPENDS=	devel/hyena \
		x11/gnome/mono-gnome
RUN_DEPENDS=	print/poppler \
		x11/gnome/mono-gnome

MODGNOME_TOOLS += yelp  desktop-file-utils  gtk-update-icon-cache

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-release \
		--disable-external-poppler-sharp

DLLMAP_FILES=	lib/poppler-sharp/poppler-sharp/poppler-sharp.dll.config

.include <bsd.port.mk>
