# $OpenBSD: Makefile,v 1.8 2020/05/15 06:33:27 ajacoutot Exp $

COMMENT=	library for encoding and decoding .avif files

GH_ACCOUNT=	AOMediaCodec
GH_PROJECT=	libavif
GH_TAGNAME=	v0.7.3
CATEGORIES=	graphics

SHARED_LIBS=	avif	1.1

HOMEPAGE=	https://github.com/AOMediaCodec/libavif

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	aom c dav1d jpeg m png pthread z

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/jpeg \
		graphics/png \
		multimedia/aom \
		multimedia/dav1d

CONFIGURE_ARGS+=-DAVIF_BUILD_APPS=ON \
		-DAVIF_BUILD_TESTS=ON \
		-DAVIF_CODEC_AOM=ON \
		-DAVIF_CODEC_DAV1D=ON

do-test:
	${WRKBUILD}/aviftest ${WRKSRC}/tests/data

.include <bsd.port.mk>
