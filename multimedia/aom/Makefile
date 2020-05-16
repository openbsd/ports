# $OpenBSD: Makefile,v 1.5 2020/05/16 09:13:31 ajacoutot Exp $

COMMENT=	Alliance for Open Media AV1 video codec

GH_ACCOUNT=	jbeich
GH_PROJECT=	aom
GH_TAGNAME=	v2.0.0-rc1
PKGNAME=	aom-2.0.0rc1
CATEGORIES=	multimedia

SHARED_LIBS=	aom	2.0

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
