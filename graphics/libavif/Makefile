# $OpenBSD: Makefile,v 1.14 2020/12/14 06:29:17 rsadowski Exp $

COMMENT=	library for encoding and decoding .avif files

GH_ACCOUNT=	AOMediaCodec
GH_PROJECT=	libavif
GH_TAGNAME=	v0.8.4
CATEGORIES=	graphics

SHARED_LIBS=	avif	3.2

HOMEPAGE=	https://github.com/AOMediaCodec/libavif

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	aom c dav1d jpeg m png pthread z

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		multimedia/aom>=2.0.0rc1 \
		multimedia/dav1d

CONFIGURE_ARGS+=-DAVIF_BUILD_APPS=ON \
		-DAVIF_BUILD_TESTS=ON \
		-DAVIF_CODEC_AOM=ON \
		-DAVIF_CODEC_AOM_DECODE=OFF \
		-DAVIF_CODEC_DAV1D=ON

do-test:
	${WRKBUILD}/aviftest ${WRKSRC}/tests/data

.include <bsd.port.mk>
