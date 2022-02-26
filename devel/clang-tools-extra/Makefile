# $OpenBSD: Makefile,v 1.24 2022/02/26 22:59:44 naddy Exp $

# XXX
# This port is more or less a copy from devel/llvm and it tries to
# package the clang extra tools without increasing the complexity of
# devel/llvm.
#
# Please keep patches in sync with devel/llvm and just remove the lld and lldb
# patches: rm patches/patch-*lld*

ONLY_FOR_ARCHS =	${LLVM_ARCHS}

COMMENT=	Clang extra tools

LLVM_V =	13.0.0
DISTNAME =	llvm-${LLVM_V}.src
PKGNAME=	clang-tools-extra-${LLVM_V}
REVISION =	1

CATEGORIES =	devel

HOMEPAGE =	https://clang.llvm.org/extra/index.html

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# In transition from BSD-ish to Apache 2 + LLVM exceptions
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses edit m z

MASTER_SITES =	https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_V}/
EXTRACT_SUFX =	.tar.xz

DISTFILES =	llvm-${LLVM_V}.src${EXTRACT_SUFX} \
		clang-${LLVM_V}.src${EXTRACT_SUFX} \
		clang-tools-extra-${LLVM_V}.src${EXTRACT_SUFX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python

RUN_DEPENDS =		devel/llvm

CONFIGURE_STYLE =	cmake

# Disable the most stuff to speed up the whole build step
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Backtrace=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_LibXml2=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Z3=ON \
			-DGO_EXECUTABLE=GO_EXECUTABLE-NOTFOUND \
			-DLLVM_BUILD_LLVM_DYLIB=OFF \
			-DLLVM_ENABLE_FFI=OFF \
			-DLLVM_ENABLE_RTTI=ON \
			-DLLVM_ENABLE_TERMINFO=ON \
			-DLLVM_LINK_LLVM_DYLIB=OFF

CONFIGURE_ARGS +=	-DCLANG_ENABLE_STATIC_ANALYZER=ON \
			-DCLANG_INCLUDE_TESTS=OFF \
			-DLLVM_BUILD_BENCHMARKS=OFF \
			-DLLVM_BUILD_TESTS=OFF \
			-DLLVM_ENABLE_DOXYGEN=OFF \
			-DLLVM_ENABLE_SPHINX=OFF \
			-DLLVM_INCLUDE_BENCHMARKS=OFF \
			-DLLVM_INCLUDE_EXAMPLES=OFF \
			-DLLVM_INCLUDE_TESTS=OFF

GCC_VER =		8.4.0
.if ${MACHINE_ARCH} == "amd64"
GCC_CONFIG =		x86_64-unknown-openbsd${OSREV}
.else
GCC_CONFIG =		${MACHINE_ARCH}-unknown-openbsd${OSREV}
.endif
CLANG_INCLUDE_PATH =	lib/clang/${LLVM_V}/include
SUBST_VARS +=		CLANG_INCLUDE_PATH LLVM_V GCC_VER GCC_CONFIG

# hack to disable the use of -Bsymbolic-functions
# Keep in sync with devel/llvm
OPENBSD_LD_IS_LLD =	FALSE
SUBST_VARS +=		OPENBSD_LD_IS_LLD

ALL_TARGET =	tools/clang/tools/extra/all
FAKE_TARGET =	tools/clang/tools/extra/install

post-extract:
	mv ${WRKDIR}/clang-${LLVM_V}.src ${WRKSRC}/tools/clang
	mv ${WRKDIR}/clang-tools-extra-${LLVM_V}.src ${WRKSRC}/tools/clang/tools/extra

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/tools/clang/lib/Driver/ToolChains/OpenBSD.cpp
	@${SUBST_CMD} ${WRKSRC}/cmake/modules/LLVMProcessSources.cmake
	@${SUBST_CMD} ${WRKSRC}/tools/clang/tools/clang-shlib/CMakeLists.txt
	@${SUBST_CMD} ${WRKSRC}/tools/llvm-shlib/CMakeLists.txt
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	find ${PREFIX}/share/clang -type f -name \*.py -exec ${MODPY_BIN_ADJ} {} +
	2to3 -w -n ${PREFIX}/share/clang
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/clang

.include <bsd.port.mk>
