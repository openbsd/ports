# $OpenBSD: Makefile,v 1.20 2016/10/03 08:05:37 ajacoutot Exp $

COMMENT=	free H.265/HEVC encoder

VER=		2.1
DISTNAME=	x265_${VER}
PKGNAME=	x265-${VER}
CATEGORIES=	multimedia
MASTER_SITES=	https://ftp.videolan.org/pub/videolan/x265/

SHARED_LIBS=	x265	8.0

HOMEPAGE=	http://x265.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread stdc++

WRKSRC=		${WRKDIST}/source

MODULES=	devel/cmake \
		lang/clang

MODCLANG_ARCHS=	amd64 i386
MODCLANG_LANGS=	c++

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	devel/yasm
.endif

SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	-DENABLE_TESTS=On

CONFIGURE_ARGS+= -DCMAKE_ASM_YASM_FLAGS_DEBUG="-g dwarf2"

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "mips64" || \
    ${MACHINE_ARCH} == "mips64el" || ${MACHINE_ARCH} == "powerpc" || \
    ${MACHINE_ARCH} == "sparc64"
CONFIGURE_ARGS+= -DNO_ATOMICS=Off
.else
CONFIGURE_ARGS+= -DNO_ATOMICS=On
.endif

do-test:
	${WRKBUILD}/test/TestBench

.include <bsd.port.mk>
