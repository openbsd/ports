# $OpenBSD: Makefile,v 1.22 2020/06/10 07:26:04 ajacoutot Exp $

COMMENT=	simple application for modifying PDF documents

GNOME_PROJECT=	pdfmod
GNOME_VERSION=	0.9.1
REVISION=	8

CATEGORIES=	graphics print

# GPLv2
PERMIT_PACKAGE=	Yes

EXTRACT_SUFX=	.tar.bz2

MODULES=	lang/mono \
		x11/gnome

BUILD_DEPENDS=	devel/hyena \
		x11/gnome/mono-gnome

RUN_DEPENDS=	print/poppler \
		x11/gnome/mono-gnome

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE=autoreconf
CONFIGURE_ARGS=	--enable-release \
		--disable-external-poppler-sharp

DLLMAP_FILES=	lib/poppler-sharp/poppler-sharp/poppler-sharp.dll.config

### build with Mono3
PATCHFILES=		pdfmod-mono3.patch:0
PATCH_DIST_STRIP=	-p1
MASTER_SITES0=		https://distfiles.bsdfrog.org/
BUILD_DEPENDS +=	devel/gpatch
PATCH=			${LOCALBASE}/bin/gpatch
###

post-extract:
	mv ${WRKSRC}/docs/C/{pdfmod.xml,index.docbook}

.include <bsd.port.mk>
