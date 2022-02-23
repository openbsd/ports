# $OpenBSD: Makefile,v 1.13 2022/02/23 21:48:09 sthen Exp $

COMMENT=	Alliance for Open Media AV1 video codec

GH_ACCOUNT=	jbeich
GH_PROJECT=	aom
GH_TAGNAME=	v3.3.0
CATEGORIES=	multimedia

SHARED_LIBS=	aom	4.0

HOMEPAGE=	https://aomedia.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX}

# XXX requires __atomic builtins
COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

CONFIGURE_ARGS+=-DBUILD_SHARED_LIBS=On \
		-DENABLE_DOCS=Off \
		-DENABLE_TESTS=Off

NO_TEST=	Yes

.include <bsd.port.mk>
