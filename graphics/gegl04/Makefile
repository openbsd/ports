# $OpenBSD: Makefile,v 1.15 2019/11/24 22:35:41 ajacoutot Exp $

COMMENT=		graph based image processing framework (API version 0.4)

V=			0.4.18
DISTNAME=		gegl-${V}
PKGNAME=		gegl04-${V}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=  gegl-0.4                  0.3 # 416.0

API_VERSION=		${V:R}
SUBST_VARS=		API_VERSION

CATEGORIES=		graphics devel

HOMEPAGE=		http://gegl.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3/LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += babl-0.1 cairo gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 intl jasper jpeg json-glib-1.0 lcms2 m
WANTLIB += pango-1.0 pangocairo-1.0 png raw rsvg-2 tiff webp

COMPILER=		base-clang ports-gcc base-gcc

MASTER_SITES=		http://download.gimp.org/pub/gegl/${API_VERSION}/

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		vala gobject-introspection

BUILD_DEPENDS=		devel/gettext,-tools \
			graphics/libgexiv2 \
			shells/bash

LIB_DEPENDS=		devel/json-glib \
			graphics/babl \
			graphics/lcms2 \
			graphics/libraw \
			graphics/libwebp \
			x11/gnome/librsvg

CONFIGURE_ARGS=		-Dgraphviz=disabled \
			-Dlensfun=disabled \
			-Dlibav=disabled \
			-Dlibspiro=disabled \
			-Dlibv4l=disabled \
			-Dlibv4l2=disabled \
			-Dlua=disabled \
			-Dmrg=disabled \
			-Dopenexr=disabled \
			-Dsdl1=disabled \
			-Dsdl2=disabled \
			-Dumfpack=disabled

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
# fix conflict with graphics/gegl; we currently only care about the libraries
	rm -rf ${PREFIX}/bin/

.include <bsd.port.mk>
