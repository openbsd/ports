# $OpenBSD: Makefile,v 1.32 2017/12/04 08:56:38 ajacoutot Exp $

COMMENT=	free H.265/HEVC encoder

VER=		2.6
DISTNAME=	x265_${VER}
PKGNAME=	x265-${VER}
CATEGORIES=	multimedia
MASTER_SITES=	https://bitbucket.org/multicoreware/x265/downloads/

SHARED_LIBS=	x265	13.0

HOMEPAGE=	http://x265.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread ${LIBCXX}

WRKDIST=	${WRKDIR}/x265_v2.6
WRKSRC=		${WRKDIST}/source

MODULES=	devel/cmake

COMPILER =	base-clang ports-clang
MODCLANG_ARCHS=	amd64 i386

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

SEPARATE_BUILD=	Yes
# Workaround for Clang 4.0
#CONFIGURE_ARGS=	-DENABLE_TESTS=On
NO_TEST=	Yes

CONFIGURE_ARGS+= -DCMAKE_ASM_YASM_FLAGS_DEBUG="-g dwarf2"

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "alpha" || \
    ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386" || \
    ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el" || \
    ${MACHINE_ARCH} == "powerpc" || ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS+= -DNO_ATOMICS=Off
.else
CONFIGURE_ARGS+= -DNO_ATOMICS=On
.endif

#do-test:
#	${WRKBUILD}/test/TestBench

.include <bsd.port.mk>
