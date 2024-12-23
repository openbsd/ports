ONLY_FOR_ARCHS =	${LLVM_ARCHS}

DPB_PROPERTIES =	parallel

COMMENT =	LLVM integrated tester

LLVM_VERSION =	19.1.6
DISTNAME =	llvm-project-${LLVM_VERSION}.src
SUPDISTFILES =	${DISTFILES:S/$/.sig/}
PKGNAME =	llvm-lit-${LLVM_VERSION}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://www.llvm.org/docs/TestingGuide.html

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Apache License v2.0 with LLVM Exceptions
PERMIT_PACKAGE =	Yes

WANTLIB =		c c++ c++abi execinfo m pthread z zstd

SITES =		https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_VERSION}/

EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang

MODULES =		devel/cmake \
			lang/python

MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		textproc/py-sphinx
LIB_DEPENDS =		archivers/zstd
TEST_DEPENDS =		shells/bash \
			sysutils/py-psutil

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=Release \
			-DLLVM_ENABLE_PROJECTS="llvm" \
			-DLLVM_INCLUDE_UTILS=ON \
			-DLLVM_INCLUDE_TESTS=ON \
			-DLLVM_ENABLE_SPHINX=ON \
			-DSPHINX_OUTPUT_MAN=ON \
			-DSPHINX_WARNINGS_AS_ERRORS=OFF

WRKSRC =		${WRKDIST}/llvm

ALL_TARGET =		FileCheck not prepare-check-lit docs-llvm-man
TEST_TARGET =		check-lit

SUBST_VARS =		LLVM_VERSION

post-build:
	@cd ${WRKSRC}/utils/lit && ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ./${MODPY_SETUP} ${MODPY_SETUP_ARGS} \
	    ${MODPY_DISTUTILS_BUILD} ${MODPY_DISTUTILS_BUILDARGS}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/FileCheck ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/not ${PREFIX}/bin
	@cd ${WRKSRC}/utils/lit && ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ./${MODPY_SETUP} ${MODPY_SETUP_ARGS} \
	    ${MODPY_DISTUTILS_INSTALL} ${MODPY_DISTUTILS_INSTALLARGS}
	${INSTALL_MAN} ${WRKBUILD}/docs/man/FileCheck.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKBUILD}/docs/man/lit.1 ${PREFIX}/man/man1

do-test:
	@${MODCMAKE_BUILD_TARGET} --target ${TEST_TARGET}

.include <bsd.port.mk>
