COMMENT=	library for encoding and decoding .avif files

GH_ACCOUNT=	AOMediaCodec
GH_PROJECT=	libavif
GH_TAGNAME=	v1.0.4
CATEGORIES=	graphics

SHARED_LIBS=	avif	7.0

HOMEPAGE=	https://github.com/AOMediaCodec/libavif

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	aom c dav1d jpeg m png pthread sharpyuv z

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		graphics/libwebp \
		multimedia/aom \
		multimedia/dav1d

CONFIGURE_ARGS+=-DAVIF_BUILD_APPS=ON \
		-DAVIF_BUILD_TESTS=ON \
		-DAVIF_CODEC_AOM=ON \
		-DAVIF_CODEC_AOM_DECODE=OFF \
		-DAVIF_CODEC_DAV1D=ON \
		-DAVIF_ENABLE_GTEST=OFF \
		-DCMAKE_DISABLE_FIND_PACKAGE_libyuv=ON

do-test:
	${WRKBUILD}/tests/aviftest ${WRKSRC}/tests/data

.include <bsd.port.mk>
