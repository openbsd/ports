# $OpenBSD: Makefile,v 1.3 2020/03/24 16:21:14 kn Exp $

# XXX
# This port is more or less a copy from devel/llvm and it tries to
# package the clang extra tools without increasing the complexity of
# devel/llvm.
#
# Please keep patches in sync with devel/llvm and just remove the lld and lldb
# patches: rm patches/patch-*lld*

ONLY_FOR_ARCHS = ${LLVM_ARCHS}

DPB_PROPERTIES = parallel

COMMENT=	Clang extra tools

LLVM_V =	8.0.1
DISTNAME =	llvm-${LLVM_V}.src
PKGNAME=	clang-tools-extra-${LLVM_V}
REVISION=	1

CATEGORIES =	devel

HOMEPAGE =	https://clang.llvm.org/extra/index.html

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses edit m z

MASTER_SITES =	https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_V}/
EXTRACT_SUFX =	.tar.xz

DISTFILES =	llvm-${LLVM_V}.src${EXTRACT_SUFX} \
		cfe-${LLVM_V}.src${EXTRACT_SUFX} \
		clang-tools-extra-${LLVM_V}.src${EXTRACT_SUFX}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake \
			lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/llvm

CONFIGURE_STYLE =	cmake

# Disable the most stuff to speed up the whole build step
CONFIGURE_ARGS =	-DLLVM_ENABLE_FFI=OFF \
			-DLLVM_ENABLE_TERMINFO=ON \
			-DLLVM_ENABLE_RTTI=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_LibXml2=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_Z3=ON \
			-DLLVM_LINK_LLVM_DYLIB=OFF \
			-DLLVM_BUILD_LLVM_DYLIB=OFF \
			-DGO_EXECUTABLE=GO_EXECUTABLE-NOTFOUND \
			-DBacktrace_LIBRARY=''

CONFIGURE_ARGS +=	-DCLANG_ENABLE_STATIC_ANALYZER=ON \
			-DCLANG_INCLUDE_TESTS=OFF \
			-DLLVM_BUILD_TESTS=OFF \
			-DLLVM_BUILD_BENCHMARKS=OFF \
			-DLLVM_ENABLE_DOXYGEN=OFF \
			-DLLVM_ENABLE_SPHINX=OFF \
			-DLLVM_INCLUDE_EXAMPLES=OFF \
			-DLLVM_INCLUDE_TESTS=OFF \
			-DLLVM_INCLUDE_BENCHMARKS=OFF

GCC_VER =		8.3.0
.if ${MACHINE_ARCH} == "amd64"
GCC_CONFIG =		x86_64-unknown-openbsd${OSREV}
.else
GCC_CONFIG =		${MACHINE_ARCH}-unknown-openbsd${OSREV}
.endif
CLANG_INCLUDE_PATH =	lib/clang/${LLVM_V}/include
SUBST_VARS +=		CLANG_INCLUDE_PATH LLVM_V GCC_VER GCC_CONFIG

ALL_TARGET =	tools/clang/tools/extra/all
FAKE_TARGET =	tools/clang/tools/extra/install

post-extract:
	mv ${WRKDIR}/cfe-${LLVM_V}.src ${WRKSRC}/tools/clang
	mv ${WRKDIR}/clang-tools-extra-${LLVM_V}.src ${WRKSRC}/tools/clang/tools/extra

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/tools/clang/lib/Driver/ToolChains/OpenBSD.cpp
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

post-install:
	find ${PREFIX}/share/clang -type f -name \*.py -exec ${MODPY_BIN_ADJ} {} +
	2to3 -w -n ${PREFIX}/share/clang
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/share/clang

.include <bsd.port.mk>
