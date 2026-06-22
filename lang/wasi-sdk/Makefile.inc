ONLY_FOR_ARCHS =	${LLVM_ARCHS}
LLVM_V ?=	22.1.8
CATEGORIES =	lang
SITES =		https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_V}/
EXTRACT_SUFX =	.tar.xz
COMPILER =	ports-clang
MODCLANG_VERSION=	22
MODULES =		devel/cmake
WASI_SYSROOT =	${LOCALBASE}/share/wasi-sysroot
# https://github.com/WebAssembly/wasi-sdk/issues/52
CFLAGS +=	-fno-exceptions
CXXFLAGS +=	-fno-exceptions
TRIPLE ?=	wasm32-unknown-wasip1
SUBST_VARS +=	TRIPLE
WRKSRC =	${WRKDIR}/${DISTNAME}/${BUILDSUBDIR}

DISTFILES =	llvm-project-${LLVM_V}.src${EXTRACT_SUFX}

post-build:
	${LOCALBASE}/bin/llvm-ranlib-${MODCLANG_VERSION} ${WRKBUILD}/lib/${LIBPATH}
