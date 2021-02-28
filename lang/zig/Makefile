# $OpenBSD: Makefile,v 1.1.1.1 2021/02/28 15:32:17 semarie Exp $

# should be fine for ${LLVM_ARCHS}, but it needs insane amount of datasize
ONLY_FOR_ARCHS =	amd64 arm64 powerpc64

COMMENT =	zig compiler and toolchain

DISTNAME =	zig-0.8.0pre1038

GH_ACCOUNT =	ziglang
GH_PROJECT =	zig-bootstrap
GH_COMMIT =	c09fa1535739b965ad525fa71ce441b195cecbe0

CATEGORIES =	lang

HOMEPAGE =	https://ziglang.org/

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# MIT: zig / Apache2: llvm+clang+lld
PERMIT_PACKAGE =	Yes

WANTLIB =	${COMPILER_LIBCXX} c curses m z

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	lang/python
BUILD_DEPENDS =	devel/cmake \
		devel/ninja

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	none

# command to build/install/test
BUILDCMD =	cd ${WRKBUILD} && ${SETENV} ${MAKE_ENV} \
			WRKSRC="${WRKSRC}" \
			WRKBUILD="${WRKBUILD}" \
			MAKE_JOBS="${MAKE_JOBS}" \
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
