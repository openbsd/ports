COMMENT=	library for encoding and decoding .avif files

DIST_TUPLE+=	github AOMediaCodec libavif v1.4.0 .
DIST_TUPLE+=	github lemenkov libyuv \
		deeb764bb92b6305ee0cb5dae7a5940fdb457fa9 ext/libyuv
DIST_TUPLE+=	github kmurray libargparse \
		81998ffafb9c2ac8cf488d31e536a2e6fd6b3fdf ext/libargparse
CATEGORIES=	graphics

SHARED_LIBS=	avif	9.0

HOMEPAGE=	https://github.com/AOMediaCodec/libavif

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	${COMPILER_LIBCXX} aom c dav1d jpeg m png pthread sharpyuv z

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

BUILD_DEPENDS+=	sysutils/ggrep

LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		graphics/libwebp \
		multimedia/aom \
		multimedia/dav1d

CONFIGURE_ARGS+=-DAVIF_BUILD_APPS=ON \
		-DAVIF_BUILD_TESTS=ON \
		-DAVIF_CODEC_AOM=SYSTEM \
		-DAVIF_CODEC_AOM_DECODE=OFF \
		-DAVIF_CODEC_DAV1D=SYSTEM \
		-DAVIF_ENABLE_GTEST=OFF \
		-DAVIF_LIBSHARPYUV=SYSTEM \
		-DAVIF_LIBYUV=LOCAL

post-extract:
	ln -sf ${LOCALBASE}/bin/ggrep ${WRKDIR}/bin/grep

do-test:
	${WRKBUILD}/tests/aviftest ${WRKSRC}/tests/data

.include <bsd.port.mk>
