ONLY_FOR_ARCHS =	${LLVM_ARCHS}
LLVM_V ?=	21.1.8
CATEGORIES =	lang
SITES =		https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_V}/
EXTRACT_SUFX =	.tar.xz
COMPILER =	ports-clang
MODCLANG_VERSION=	19
MODULES =		devel/cmake
WASI_SYSROOT =	${LOCALBASE}/share/wasi-sysroot
# https://github.com/WebAssembly/wasi-sdk/issues/52
CFLAGS +=	-fno-exceptions
CXXFLAGS +=	-fno-exceptions
TRIPLE =	wasm32-wasi
WRKSRC =	${WRKDIR}/${DISTNAME}/${BUILDSUBDIR}

.if ${PKGNAME:Mwasi-libcxx*}
DISTFILES =	llvm-project-${LLVM_V}.src${EXTRACT_SUFX}
.else
DISTFILES =	llvm-${LLVM_V}.src${EXTRACT_SUFX} \
		cmake-${LLVM_V}.src${EXTRACT_SUFX} \
		compiler-rt-${LLVM_V}.src${EXTRACT_SUFX}
post-extract:
	mv ${WRKDIR}/llvm-${LLVM_V}.src ${WRKDIR}/llvm
.endif

post-build:
	${LOCALBASE}/bin/llvm-ranlib-${MODCLANG_VERSION} ${WRKBUILD}/lib/${LIBPATH}
