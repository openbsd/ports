ONLY_FOR_ARCHS =	${LLVM_ARCHS}
LLVM_V ?=	19.1.7
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

DISTFILES =	llvm-${LLVM_V}.src${EXTRACT_SUFX} \
		cmake-${LLVM_V}.src${EXTRACT_SUFX}
# wasi-libcxx build needs libcxxabi source for c++abi.h only ?
.if ${PKGNAME:Mwasi-libcxx*}
DISTFILES +=	libcxx-${LLVM_V}.src${EXTRACT_SUFX} \
		libcxxabi-${LLVM_V}.src${EXTRACT_SUFX} \
		runtimes-${LLVM_V}.src${EXTRACT_SUFX}

post-extract:
	mv ${WRKDIR}/libcxx-${LLVM_V}.src ${WRKDIR}/${DISTNAME}/libcxx
	mv ${WRKDIR}/libcxxabi-${LLVM_V}.src ${WRKDIR}/${DISTNAME}/libcxxabi
	mv ${WRKDIR}/runtimes-${LLVM_V}.src/* ${WRKDIR}/${DISTNAME}/runtimes
	mv ${WRKDIR}/cmake-${LLVM_V}.src/Modules ${WRKDIR}/llvm-${LLVM_V}.src/cmake/
	cp ${WRKDIR}/llvm-${LLVM_V}.src/cmake/modules/* ${WRKDIR}/llvm-${LLVM_V}.src/cmake/Modules/

.else
DISTFILES +=	compiler-rt-${LLVM_V}.src${EXTRACT_SUFX}
post-extract:
	mv ${WRKDIR}/llvm-${LLVM_V}.src ${WRKDIR}/llvm
.endif

post-build:
	${LOCALBASE}/bin/llvm-ranlib-${MODCLANG_VERSION} ${WRKBUILD}/lib/${LIBPATH}
