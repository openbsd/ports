COMMENT=	SIMD-accelerated JPEG codec replacement of libjpeg

V=		3.0.3
DISTNAME=	libjpeg-turbo-${V}
PKGNAME=	jpeg-${V}
EPOCH=		0

SHARED_LIBS+=	jpeg		71.0
SHARED_LIBS+=	turbojpeg	1.0

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

CONFIGURE_ARGS+= -DCMAKE_INSTALL_PREFIX="${PREFIX}"
DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA} ${WRKSRC}/{libjpeg,wizard}.txt ${PREFIX}/share/doc/jpeg

.include <bsd.port.mk>
