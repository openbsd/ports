# $OpenBSD: Makefile,v 1.68 2020/06/28 10:55:33 sthen Exp $

COMMENT=	SIMD-accelerated JPEG codec replacement of libjpeg

V=		2.0.5
DISTNAME=	libjpeg-turbo-${V}
PKGNAME=	jpeg-${V}
EPOCH=		0

SHARED_LIBS+=	jpeg		70.0	# 64.0
SHARED_LIBS+=	turbojpeg	0.0	# 2.0.4

CATEGORIES=	graphics
DPB_PROPERTIES=	parallel

HOMEPAGE=	https://libjpeg-turbo.org/

# BSD-style
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libjpeg-turbo/}

WANTLIB=	c m

MODULES=	devel/cmake

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS=	devel/yasm
.endif

CONFIGURE_ARGS+= -DCMAKE_INSTALL_PREFIX="${PREFIX}"
DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA} ${WRKSRC}/libjpeg.txt ${WRKSRC}/wizard.txt \
	    ${PREFIX}/share/doc/jpeg
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/jpeg
	${INSTALL_DATA} ${WRKSRC}/example.txt ${PREFIX}/share/examples/jpeg

.include <bsd.port.mk>
