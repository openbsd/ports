# $OpenBSD: Makefile,v 1.161 2017/10/08 07:40:18 ajacoutot Exp $

# XXX: Remember to bump MODCLANG_VERSION in lang/clang/clang.port.mk when
# updating this port.

ONLY_FOR_ARCHS = ${LLVM_ARCHS}
BROKEN-powerpc =	relocation truncated to fit: R_PPC_PLTREL24

DPB_PROPERTIES = parallel

MULTI_PACKAGES =	-main -python
COMMENT-main =	modular, fast C/C++/ObjC compiler, static analyzer and tools
COMMENT-python =	Python bindings for Clang

LLVM_V =	5.0.0
DISTNAME =	llvm-${LLVM_V}.src
PKGNAME =	llvm-${LLVM_V}
PKGNAME-main =	llvm-${LLVM_V}
PKGNAME-python =	py-llvm-${LLVM_V}
REVISION-main =	5
CATEGORIES =	devel
DISTFILES =	llvm-${LLVM_V}.src${EXTRACT_SUFX} \
		cfe-${LLVM_V}.src${EXTRACT_SUFX} \
		lld-${LLVM_V}.src${EXTRACT_SUFX}
MASTER_SITES =	https://www.llvm.org/releases/${LLVM_V}/
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS =	clang		6.0 \
		LTO		3.0

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	http://www.llvm.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${COMPILER_LIBCXX} c m pthread z

MODULES =	devel/cmake \
		lang/python

COMPILER =	base-clang ports-gcc

TEST_DEPENDS =		devel/dejagnu \
			shells/bash
BUILD_DEPENDS +=	textproc/py-sphinx
RUN_DEPENDS +=		devel/gtest

# clang python module loads libclang.so dynamically with cdll.LoadLibrary()
WANTLIB-python =	clang
RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS}
LIB_DEPENDS-python =	${BUILD_PKGPATH},-main

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS =	-DLLVM_ENABLE_FFI:Bool=False \
			-DLLVM_ENABLE_TERMINFO:Bool=False \
			-DLLVM_REQUIRES_RTTI:Bool=True \
			-DCMAKE_DISABLE_FIND_PACKAGE_LibXml2:Bool=True \
			-DGO_EXECUTABLE=GO_EXECUTABLE-NOTFOUND \
			-DBacktrace_LIBRARY=''

# Workaround relocation overflow
#
# Have the build disable PIE to workaround breakage that was
# introduced when PIE was enabled
.if ${MACHINE_ARCH} == "powerpc"
CFLAGS +=		-mlongcall
CXXFLAGS +=		-mlongcall
CONFIGURE_ARGS +=	-DCMAKE_EXE_LINKER_FLAGS="-nopie"
CONFIGURE_ARGS +=	-DCMAKE_SHARED_LINKER_FLAGS="-nopie"
.elif ${MACHINE_ARCH} == "arm"
CFLAGS +=		-mlong-calls
CXXFLAGS +=		-mlong-calls
.endif

TEST_TARGET =		check

# XXX sync
GCC_VER =		4.9.4
.if ${MACHINE_ARCH} == "amd64"
GCC_CONFIG =		x86_64-unknown-openbsd${OSREV}
.else
GCC_CONFIG =		${MACHINE_ARCH}-unknown-openbsd${OSREV}
.endif
CLANG_INCLUDE_PATH =	lib/clang/${LLVM_V}/include
SUBST_VARS +=		CLANG_INCLUDE_PATH LLVM_V GCC_VER GCC_CONFIG

post-extract:
	mv ${WRKDIR}/cfe-${LLVM_V}.src ${WRKSRC}/tools/clang
	mv ${WRKDIR}/lld-${LLVM_V}.src ${WRKSRC}/tools/lld

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/tools/clang/lib/Driver/ToolChains/OpenBSD.cpp
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-build:
	cd ${WRKSRC}/docs && make -f Makefile.sphinx man
	cd ${WRKSRC}/tools/clang/docs && make -f Makefile.sphinx man

post-install:
	${INSTALL_DATA_DIR} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/clang
	${INSTALL_DATA} ${WRKSRC}/tools/clang/bindings/python/clang/* \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/clang
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/clang
	${INSTALL_DATA} ${WRKSRC}/docs/_build/man/* \
	    ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/tools/clang/docs/_build/man/clang.1 \
	    ${PREFIX}/man/man1
	# lit and FileCheck are not installed
	@rm ${PREFIX}/man/man1/lit.1
	@rm ${PREFIX}/man/man1/FileCheck.1

.include <bsd.port.mk>

.if ${CHOSEN_COMPILER} == "ports-gcc"
TEST_DEPENDS +=		lang/gcc/${MODGCC4_VERSION},-c++
RUN_DEPENDS +=		lang/gcc/${MODGCC4_VERSION},-c++
.endif
