ONLY_FOR_ARCHS =	${LLVM_ARCHS}

DPB_PROPERTIES =	parallel

COMMENT =	LLVM OpenMP libraries

LLVM_VERSION =	16.0.6
LLVM_BASE =	llvm16
DISTNAME =	openmp-${LLVM_VERSION}.src
DISTFILES =	openmp-${LLVM_VERSION}.src.tar.xz \
		cmake-${LLVM_VERSION}.src.tar.xz
SUPDISTFILES =  ${DISTFILES:S/$/.sig/}
PKGNAME =	llvm-openmp-${LLVM_VERSION}

SHARED_LIBS =	omp	0.0

CATEGORIES =	devel

HOMEPAGE =	https://openmp.llvm.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Apache License v2.0 with LLVM Exceptions
PERMIT_PACKAGE =	Yes

WANTLIB =		m pthread

SITES =			https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_VERSION}/

EXTRACT_SUFX =		.tar.xz

COMPILER =		base-clang

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/llvm-lit
TEST_DEPENDS =		devel/llvm-lit

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS =	-DCMAKE_C_COMPILER=clang \
			-DCMAKE_CXX_COMPILER=clang++ \
			-DCMAKE_MODULE_PATH=${WRKDIR}/cmake-${LLVM_VERSION}.src/Modules \
			-DCMAKE_SHARED_LINKER_FLAGS=-lm \
			-DLIBomp_VERSION=${LIBomp_VERSION} \
			-DLIBOMP_INSTALL_ALIASES=no \
			-DOPENMP_ENABLE_LIBOMPTARGET=off \
			-DOPENMP_ENABLE_OMPT_TOOLS=off

TEST_TARGET =		check-openmp

do-test:
	@${MODCMAKE_BUILD_TARGET} --target ${TEST_TARGET}

.include <bsd.port.mk>
