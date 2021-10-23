# $OpenBSD: Makefile,v 1.9 2021/09/09 15:10:31 semarie Exp $

# should be fine for ${LLVM_ARCHS}, but it needs insane amount of datasize
ONLY_FOR_ARCHS =	amd64 arm64 powerpc64

BROKEN-arm64 =		generated binary segfault
BROKEN-powerpc64 =	ld: error: undefined symbol: __subkf3 (and others)

# build llvm as part of the port
DPB_PROPERTIES =	parallel

COMMENT =	zig compiler and toolchain

DISTNAME =	zig-0.8.1

# see https://github.com/ziglang/zig/tree/0.8.x
ZIG_VERSION =	0.8.1
ZIG_COMMIT =	12828c09d66873f1626d21c898117969764f3a4f

# see https://github.com/mordak/llvm-project/tree/openbsd-release/12.x
LLVM_VERSION =	12.x
LLVM_COMMIT =	d01534d1b1a68a370db6e79ea0ea03a63cf778d7

CATEGORIES =	lang

HOMEPAGE =	https://ziglang.org/

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# MIT: zig / Apache2: llvm+clang+lld
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} c m

MASTER_SITES =	https://github.com/ziglang/zig/archive/
MASTER_SITES0 =	https://github.com/mordak/llvm-project/archive/

DISTFILES =	zig-${ZIG_VERSION}-${ZIG_COMMIT:C/(........).*/\1/}${EXTRACT_SUFX}{${ZIG_COMMIT}${EXTRACT_SUFX}} \
		llvm-project-${LLVM_VERSION}-${LLVM_COMMIT:C/(........).*/\1/}${EXTRACT_SUFX}{${LLVM_COMMIT}${EXTRACT_SUFX}}:0

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	lang/python
BUILD_DEPENDS =	devel/cmake \
		devel/ninja

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	none

MAKE_ENV +=	CXXFLAGS="${CXXFLAGS}" \
		MAKE_JOBS="${MAKE_JOBS}" \
		WRKSRC="${WRKSRC}" \
		WRKBUILD="${WRKBUILD}"

# command to build/install/test
BUILDCMD =	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		    sh "${.CURDIR}/files/build.sh" \
		        "${ZIG_VERSION}+${ZIG_COMMIT:C/(.........).*/\1/}"

post-extract:
	mkdir -p ${WRKSRC}
	mv ${WRKDIR}/zig-${ZIG_COMMIT} ${WRKSRC}/zig
	mv ${WRKDIR}/llvm-project-${LLVM_COMMIT} ${WRKSRC}/llvm-project

pre-configure:
	@ln -fs ${MODPY_BIN} ${WRKDIR}/bin/python

do-build:
	${BUILDCMD} build

do-install:
	${BUILDCMD} install
	find ${PREFIX}/lib/zig -name '*.orig' -delete

do-test:
	${BUILDCMD} test

.include <bsd.port.mk>
