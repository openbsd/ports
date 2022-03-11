COMMENT=	free H.265/HEVC encoder

VER=		3.5
DISTNAME=	x265_${VER}
PKGNAME=	x265-${VER}
REVISION=	0
CATEGORIES=	multimedia
MASTER_SITES=	https://bitbucket.org/multicoreware/x265_git/downloads/

SHARED_LIBS=	x265	23.0

HOMEPAGE=	https://x265.org/

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

CONFIGURE_ARGS+=-DX265_VERSION=${VER} \
		-DX265_LATEST_TAG=${VER}

.if ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ARGS+=-DENABLE_ASSEMBLY=Off
.endif

do-test:
	${WRKBUILD}/test/TestBench

.include <bsd.port.mk>
