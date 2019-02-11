# $OpenBSD: Makefile,v 1.212 2019/02/11 05:33:57 jca Exp $

# XXX: Remember to bump MODCLANG_VERSION in lang/clang/clang.port.mk when
# updating this port.

# XXX If broken on an architecture, remove the arch from LLVM_ARCHS.
ONLY_FOR_ARCHS = ${LLVM_ARCHS}

DPB_PROPERTIES = parallel

MULTI_PACKAGES =	-main -python -lldb
COMMENT-main =	modular, fast C/C++/ObjC compiler, static analyzer and tools
COMMENT-lldb =	LLDB debugger
COMMENT-python =	Python bindings for Clang

LLVM_V =	7.0.1
DISTNAME =	llvm-${LLVM_V}.src
PKGNAME =	llvm-${LLVM_V}
PKGSPEC-main =	llvm-=${LLVM_V}
PKGNAME-main =	llvm-${LLVM_V}
PKGNAME-python =	py-llvm-${LLVM_V}
PKGNAME-lldb =	lldb-${LLVM_V}
REVISION-main =	5
CATEGORIES =	devel
DISTFILES =	llvm-${LLVM_V}.src${EXTRACT_SUFX} \
		cfe-${LLVM_V}.src${EXTRACT_SUFX} \
		lld-${LLVM_V}.src${EXTRACT_SUFX} \
		lldb-${LLVM_V}.src${EXTRACT_SUFX}
MASTER_SITES =	https://www.llvm.org/releases/${LLVM_V}/
EXTRACT_SUFX =	.tar.xz

SHARED_LIBS =	clang		8.0 \
		lldb		1.0 \
		LTO		5.0

# packager notes in http://llvm.org/docs/Packaging.html
HOMEPAGE =	https://www.llvm.org/

MAINTAINER=	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	${COMPILER_LIBCXX} c curses edit form m panel pthread \
		${MODPY_WANTLIB} z

PSEUDO_FLAVORS = no_lldb
FLAVOR ?=
NOT_FOR_ARCHS-lldb = ${GCC4_ARCHS}

MODULES =	devel/cmake \
		lang/python

COMPILER =	base-clang ports-gcc

TEST_DEPENDS =		devel/dejagnu \
			shells/bash
BUILD_DEPENDS +=	devel/swig \
			textproc/py-sphinx
RUN_DEPENDS +=		devel/gtest

.include <bsd.port.arch.mk>

.if !${PROPERTIES:Mclang}
TEST_DEPENDS +=		lang/gcc/${MODGCC4_VERSION},-c++
RUN_DEPENDS +=		lang/gcc/${MODGCC4_VERSION},-c++
.endif

# clang python module loads libclang.so dynamically with cdll.LoadLibrary()
WANTLIB-python =	clang
RUN_DEPENDS-python =	${MODPY_RUN_DEPENDS}
LIB_DEPENDS-python =	${BUILD_PKGPATH},-main

WANTLIB-lldb =		clang
LIB_DEPENDS-lldb =	${BUILD_PKGPATH},-main
RUN_DEPENDS-lldb =	${MODPY_RUN_DEPENDS} \
			devel/py-six

SEPARATE_BUILD =	Yes
CONFIGURE_ARGS =	-DLLVM_ENABLE_FFI:Bool=False \
			-DLLVM_ENABLE_TERMINFO:Bool=False \
			-DLLVM_ENABLE_RTTI:Bool=True \
			-DCMAKE_DISABLE_FIND_PACKAGE_LibXml2:Bool=True \
			-DLLVM_LINK_LLVM_DYLIB:Bool=True \
			-DLLVM_BUILD_LLVM_DYLIB:Bool=True \
			-DGO_EXECUTABLE=GO_EXECUTABLE-NOTFOUND \
			-DBacktrace_LIBRARY=''

# Disable some protections in the compiler to regain performance
.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "i386"
CXXFLAGS +=	-fno-ret-protector
.endif
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CXXFLAGS +=	-mno-retpoline
.endif

# Workaround relocation overflow
.if ${MACHINE_ARCH} == "powerpc"
# As a workaround for the size only build the PowerPC backend
CONFIGURE_ARGS +=	-DLLVM_TARGETS_TO_BUILD="PowerPC"
.elif ${MACHINE_ARCH} == "arm"
CFLAGS +=		-mlong-calls
CXXFLAGS +=		-mlong-calls
.endif

.if ${MACHINE_ARCH} == "powerpc"
PKG_ARGS +=		-Dpowerpc=1
.else
PKG_ARGS +=		-Dpowerpc=0
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
	mv ${WRKDIR}/lldb-${LLVM_V}.src ${WRKSRC}/tools/lldb

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/tools/clang/lib/Driver/ToolChains/OpenBSD.cpp
	-@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python
.if !${BUILD_PACKAGES:M-lldb}
	rm -r ${WRKSRC}/tools/lldb
.endif

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
.if ${BUILD_PACKAGES:M-lldb}
	ln -fs ${TRUEPREFIX}/lib/liblldb.so.${LIBlldb_VERSION} \
	    ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/lldb/_lldb.so
.endif

.include <bsd.port.mk>
