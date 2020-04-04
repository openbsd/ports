# $OpenBSD: Makefile,v 1.6 2020/04/04 08:35:17 ajacoutot Exp $

COMMENT=	library for encoding and decoding .avif files

GH_ACCOUNT=	AOMediaCodec
GH_PROJECT=	libavif
GH_TAGNAME=	v0.6.3
CATEGORIES=	graphics

SHARED_LIBS=	avif	1.0

HOMEPAGE=	https://github.com/AOMediaCodec/libavif

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	aom dav1d m pthread

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	multimedia/aom \
		multimedia/dav1d

CONFIGURE_ARGS+=-DAVIF_BUILD_TESTS=ON \
		-DAVIF_CODEC_AOM=ON \
		-DAVIF_CODEC_DAV1D=ON

do-test:
	${WRKBUILD}/aviftest ${WRKSRC}/tests/data

.include <bsd.port.mk>
