ONLY_FOR_ARCHS =	${LLVM_ARCHS}
LLVM_V =	13.0.0
CATEGORIES =	lang
SITES =		https://github.com/llvm/llvm-project/releases/download/llvmorg-${LLVM_V}/
EXTRACT_SUFX =	.tar.xz
COMPILER =	ports-clang
MODULES =		devel/cmake
WASI_SYSROOT =	${LOCALBASE}/share/wasi-sysroot
# https://github.com/WebAssembly/wasi-sdk/issues/52
CFLAGS +=	-fno-exceptions
CXXFLAGS +=	-fno-exceptions
WRKDIST =	${WRKDIR}/${DISTNAME}/${BUILDSUBDIR}

DISTFILES =	llvm-${LLVM_V}.src${EXTRACT_SUFX}
# wasi-libcxx build needs libcxxabi source for c++abi.h only ?
.if ${PKGNAME:Mwasi-libcxx*}
DISTFILES +=	libcxx-${LLVM_V}.src${EXTRACT_SUFX} \
		libcxxabi-${LLVM_V}.src${EXTRACT_SUFX}

post-extract:
	mv ${WRKDIR}/libcxx-${LLVM_V}.src ${WRKDIR}/${DISTNAME}/libcxx
	mv ${WRKDIR}/libcxxabi-${LLVM_V}.src ${WRKDIR}/${DISTNAME}/libcxxabi

.else
DISTFILES +=	compiler-rt-${LLVM_V}.src${EXTRACT_SUFX}
.endif

post-build:
	${LOCALBASE}/bin/llvm-ranlib-${MODCLANG_VERSION} ${WRKBUILD}/lib/${LIBPATH}
