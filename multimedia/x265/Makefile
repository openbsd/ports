# $OpenBSD: Makefile,v 1.44 2019/11/02 18:35:02 ajacoutot Exp $

COMMENT=	free H.265/HEVC encoder

VER=		3.2.1
DISTNAME=	x265_${VER}
PKGNAME=	x265-${VER}
CATEGORIES=	multimedia
MASTER_SITES=	https://bitbucket.org/multicoreware/x265/downloads/

SHARED_LIBS=	x265	20.0

HOMEPAGE=	http://x265.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB=	c m pthread ${COMPILER_LIBCXX}

WRKSRC=		${WRKDIST}/source

MODULES=	devel/cmake

COMPILER=	base-clang ports-gcc

.if ${MACHINE_ARCH} == "amd64"
BUILD_DEPENDS+=	devel/nasm
.endif

CONFIGURE_ARGS+=-DCMAKE_ASM_YASM_FLAGS_DEBUG="-g dwarf2" \
		-DENABLE_PIC=On \
		-DENABLE_TESTS=On

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "alpha" || \
    ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "arm" || \
    ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "mips64" || \
    ${MACHINE_ARCH} == "mips64el" || ${MACHINE_ARCH} == "powerpc" || \
    ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS+=-DNO_ATOMICS=Off
.else
CONFIGURE_ARGS+=-DNO_ATOMICS=On
.endif

.if ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=-DENABLE_ASSEMBLY=Off
.endif

do-test:
	${WRKBUILD}/test/TestBench

.include <bsd.port.mk>
