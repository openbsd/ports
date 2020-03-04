# $OpenBSD: Makefile,v 1.2 2020/03/04 07:28:28 ajacoutot Exp $

COMMENT=	library for encoding and decoding .avif files

GH_ACCOUNT=	AOMediaCodec
GH_PROJECT=	libavif
GH_TAGNAME=	v0.5.7
CATEGORIES=	graphics

SHARED_LIBS=	avif	0.1

HOMEPAGE=	https://github.com/AOMediaCodec/libavif

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	aom dav1d m pthread

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	multimedia/aom \
		multimedia/dav1d

CONFIGURE_ARGS+=-DAVIF_CODEC_AOM=ON \
		-DAVIF_CODEC_DAV1D=ON

NO_TEST=	Yes

.include <bsd.port.mk>
