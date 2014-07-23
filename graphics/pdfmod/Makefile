# $OpenBSD: Makefile,v 1.16 2014/07/23 09:01:24 ajacoutot Exp $

COMMENT=	simple application for modifying PDF documents

GNOME_PROJECT=	pdfmod
GNOME_VERSION=	0.9.1
REVISION=	4

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

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--enable-release \
		--disable-external-poppler-sharp

DLLMAP_FILES=	lib/poppler-sharp/poppler-sharp/poppler-sharp.dll.config

### build with Mono3
PATCHFILES=		pdfmod-mono3.patch:0
PATCH_DIST_STRIP=	-p1
MASTER_SITES0=		https://distfiles.bsdfrog.org/
BUILD_DEPENDS +=	devel/gpatch
PATCH=			${LOCALBASE}/bin/gpatch
pre-configure:
	perl -pi -e 's,gmcs,dmcs,g' ${WRKSRC}/configure
###

.include <bsd.port.mk>
