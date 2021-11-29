# $OpenBSD: Makefile,v 1.62 2021/11/29 17:31:34 ajacoutot Exp $

COMMENT=		dynamic pixel format conversion library

V=			0.1.88
DISTNAME=		babl-${V}
EXTRACT_SUFX=		.tar.xz

API_VERSION=		${V:R}
SUBST_VARS=		API_VERSION

CATEGORIES=		graphics devel

SHARED_LIBS += babl-0.1                  1.8 # 0.185.1

HOMEPAGE=		http://gegl.org/babl/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3/LGPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += lcms2 m pthread

MASTER_SITES=		http://download.gimp.org/pub/babl/${V:R}/

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection vala

COMPILER=		base-clang ports-gcc

# rsvg-convert(1)
BUILD_DEPENDS=		x11/gnome/librsvg

LIB_DEPENDS=		graphics/lcms2

CONFIGURE_ARGS=		-Dwith-docs=false \

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS +=	-Denable-sse=false \
			-Denable-sse2=false
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
