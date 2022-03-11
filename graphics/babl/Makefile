COMMENT=		dynamic pixel format conversion library

V=			0.1.90
DISTNAME=		babl-${V}
EXTRACT_SUFX=		.tar.xz

API_VERSION=		${V:R}
SUBST_VARS=		API_VERSION

CATEGORIES=		graphics devel

SHARED_LIBS += babl-0.1                  1.8 # 0.189.1

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

.if ${MACHINE_ARCH} == "amd64"
PKG_ARGS +=		-Damd64=1
.else
PKG_ARGS +=		-Damd64=0
.endif

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
