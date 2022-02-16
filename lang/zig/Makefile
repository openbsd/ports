# $OpenBSD: Makefile,v 1.13 2022/02/16 07:17:21 semarie Exp $

# should be fine for ${LLVM_ARCHS}, but it needs insane amount of datasize
ONLY_FOR_ARCHS =	amd64 arm64 powerpc64

BROKEN-amd64 =		allocation failed
BROKEN-arm64 =		generated binary segfault
BROKEN-powerpc64 =	ld: error: undefined symbol: __subkf3 (and others)

COMMENT =	zig compiler and toolchain

DISTNAME =	zig-0.9.1

# see https://github.com/ziglang/zig/tree/0.9.x
ZIG_VERSION =	0.9.1
ZIG_COMMIT =	6d44a6222d6eba600deb7f16c124bfa30628fb60

CATEGORIES =	lang

HOMEPAGE =	https://ziglang.org/

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} c m

MASTER_SITES =	https://github.com/ziglang/zig/archive/

DISTFILES +=	zig-${ZIG_VERSION}-${ZIG_COMMIT:C/(........).*/\1/}${EXTRACT_SUFX}{${ZIG_COMMIT}${EXTRACT_SUFX}}

# C++11
COMPILER =	base-clang ports-gcc

# link with static-libs of llvm
BUILD_DEPENDS +=	devel/llvm>=13,<14

BUILD_DEPENDS +=	devel/cmake \
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

do-build:
	${BUILDCMD} build

do-install:
	${BUILDCMD} install
	find ${PREFIX}/lib/zig -name '*.orig' -delete

do-test:
	${BUILDCMD} test

.include <bsd.port.mk>
