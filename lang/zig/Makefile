# $OpenBSD: Makefile,v 1.7 2021/06/05 09:19:50 semarie Exp $

# should be fine for ${LLVM_ARCHS}, but it needs insane amount of datasize
ONLY_FOR_ARCHS =	amd64 arm64 powerpc64

BROKEN-arm64 =		generated binary segfault
BROKEN-powerpc64 =	ld: error: undefined symbol: __subkf3 (and others)

# build llvm as part of the port
DPB_PROPERTIES =	parallel

COMMENT =	zig compiler and toolchain

DISTNAME =	zig-0.8.0

GH_ACCOUNT =	ziglang
GH_PROJECT =	zig-bootstrap
GH_TAGNAME =	0.8.0

CATEGORIES =	lang

HOMEPAGE =	https://ziglang.org/

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# MIT: zig / Apache2: llvm+clang+lld
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} c m

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
		    sh "${.CURDIR}/files/build.sh"

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
