# $OpenBSD: Makefile,v 1.16 2015/12/25 07:51:37 ajacoutot Exp $

COMMENT=	free H.265/HEVC encoder

DISTNAME=	x265_1.8+93
PKGNAME=	x265-1.8.93
REVISION=	0
CATEGORIES=	multimedia
MASTER_SITES=	http://comstyle.com/source/

SHARED_LIBS=	x265	5.0

HOMEPAGE=	http://x265.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c m pthread stdc++

WRKSRC=		${WRKDIST}/source
WRKDIST=	${WRKDIR}/x265_1.8

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
