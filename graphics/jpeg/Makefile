COMMENT=	SIMD-accelerated JPEG codec replacement of libjpeg

V=		3.2.0
DISTNAME=	libjpeg-turbo-${V}
PKGNAME=	jpeg-${V}

SHARED_LIBS+=	jpeg		72.0
SHARED_LIBS+=	turbojpeg	2.0

EPOCH=		0

CATEGORIES=	graphics
DPB_PROPERTIES=	parallel

HOMEPAGE=	https://libjpeg-turbo.org/

# BSD-style
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/libjpeg-turbo/libjpeg-turbo/releases/download/$V/

WANTLIB=	c m

MODULES=	devel/cmake

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	devel/nasm
.endif

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CFLAGS+=	-msse2
.endif

CONFIGURE_ARGS=	-DCMAKE_INSTALL_PREFIX="${PREFIX}" \
		-DCMAKE_POSITION_INDEPENDENT_CODE=ON

DEBUG_PACKAGES=	${BUILD_PACKAGES}

.include <bsd.port.mk>
