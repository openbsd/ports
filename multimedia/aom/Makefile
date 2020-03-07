# $OpenBSD: Makefile,v 1.3 2020/03/07 13:32:40 ajacoutot Exp $

COMMENT=	Alliance for Open Media AV1 video codec

# 2ee31b4 from git
DISTNAME=	aom-1.0.0.20200305
CATEGORIES=	multimedia
MASTER_SITES=	https://comstyle.com/source/
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	aom	1.1

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
