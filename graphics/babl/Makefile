# $OpenBSD: Makefile,v 1.54 2020/02/18 18:11:32 gkoehler Exp $

COMMENT=		dynamic pixel format conversion library

V=			0.1.74
REVISION=		0
DISTNAME=		babl-${V}
EXTRACT_SUFX=		.tar.xz

API_VERSION=		${V:R}
SUBST_VARS=		API_VERSION

CATEGORIES=		graphics devel

SHARED_LIBS += babl-0.1                  1.7 # 0.173.1

HOMEPAGE=		http://gegl.org/babl/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3/LGPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += lcms2 m pthread

MASTER_SITES=		http://download.gimp.org/pub/babl/${V:R}/

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection

COMPILER=		base-clang ports-gcc

LIB_DEPENDS=		graphics/lcms2

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS +=	-Denable-sse=false \
			-Denable-sse2=false
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
