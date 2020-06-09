# $OpenBSD: Makefile,v 1.48 2020/06/09 14:54:37 ajacoutot Exp $

COMMENT=	free H.265/HEVC encoder

VER=		3.4
DISTNAME=	x265_${VER}
PKGNAME=	x265-${VER}
CATEGORIES=	multimedia
MASTER_SITES=	https://bitbucket.org/multicoreware/x265/downloads/

SHARED_LIBS=	x265	22.0

HOMEPAGE=	http://x265.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX}

WRKSRC=		${WRKDIST}/source

MODULES=	devel/cmake

# XXX requires __sync builtins
COMPILER=	base-clang ports-gcc

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
.endif

CONFIGURE_ARGS+=-DCMAKE_ASM_YASM_FLAGS_DEBUG="-g dwarf2" \
		-DENABLE_PIC=On \
		-DENABLE_TESTS=On

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=-DENABLE_ASSEMBLY=Off
.endif

do-test:
	${WRKBUILD}/test/TestBench

.include <bsd.port.mk>
