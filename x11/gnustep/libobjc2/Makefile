ONLY_FOR_ARCHS =	${LLD_ARCHS}

COMMENT =	GNUstep libobjc2 objective-c runtime

# note: this port does not use the gnustep module
VERSION =	2.3
GH_ACCOUNT =	gnustep
GH_PROJECT =	libobjc2
GH_TAGNAME =	v${VERSION}
DISTNAME =	libobjc2-${VERSION:S/_//}
PKGNAME =	gnustep-${DISTNAME}

SHARED_LIBS +=	objc2	4.0
SHARED_LIBS +=  objcxx	3.0

CATEGORIES =	x11/gnustep devel

HOMEPAGE =	http://www.gnustep.org/

WANTLIB += ${COMPILER_LIBCXX} m BlocksRuntime

LIB_DEPENDS +=	devel/libdispatch

COMPILER =	base-clang
MODULES =	devel/cmake

# clang on sparc64 doesn't use the integrated assembler by default
# gas(1), in turn, doesn't support the generated assembly
.if ${MACHINE_ARCH} == "sparc64"
CFLAGS +=	-fintegrated-as
.endif

BUILD_DEPENDS +=	devel/robin-map
BUILD_DEPENDS +=	devel/libdispatch:patch
MAKE_FLAGS +=	LIBOBJCLIBNAME=objc2 \
		LIBOBJC=libobjc2 \
		HEADER_DIR=${DESTDIR}${PREFIX}/include/gnustep \
		VERSION=${LIBobjc2_VERSION} \
		SILENT=""

CONFIGURE_ARGS +=	-DLIBOBJC_NAME=objc2 -DINCLUDE_DIRECTORY=gnustep/objc \
			-DCMAKE_MODULE_PATH=${PREFIX}/share/llvm/cmake \
			-DBUILD_STATIC_LIBOBJC=On \
			-DEMBEDDED_BLOCKS_RUNTIME=Off \
			-DOLDABI_COMPAT=Off \
			-DLLVM_OPTS=Off \
			-DTESTS=Off \
			-DHAVE_BLOCK_USE_RR2=1 \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${WRKSRC}/libdispatch/BlocksRuntime -I${LOCALBASE}/include" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${WRKSRC}/libdispatch/BlocksRuntime -I${LOCALBASE}/include" \
			-DCMAKE_OBJC_FLAGS="${OBJCFLAGS} -I${WRKSRC}/libdispatch/BlocksRuntime -I${LOCALBASE}/include" \
			-DCMAKE_OBJCXX_FLAGS="${OBJCXXFLAGS} -I${WRKSRC}/libdispatch/BlocksRuntime -I${LOCALBASE}/include"

post-extract:
	ln -s ${WRKDIR}/devel/libdispatch/swift-*/src/ ${WRKSRC}/libdispatch

# 95% tests passed, 5 tests failed out of 98
TEST_WRKBUILD = ${WRKDIR}/tests-${ARCH}
test:
	mkdir -p ${TEST_WRKBUILD}
	cd ${TEST_WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		cmake \
		-DLIBOBJC_NAME=objc2 \
		-DINCLUDE_DIRECTORY=gnustep/objc \
		-DCMAKE_MODULE_PATH=${PREFIX}/share/llvm/cmake \
		-DBUILD_STATIC_LIBOBJC=On \
		-DEMBEDDED_BLOCKS_RUNTIME=Off \
		-DOLDABI_COMPAT=Off \
		-DLLVM_OPTS=Off \
		-DTESTS=On \
		-DHAVE_BLOCK_USE_RR2=1 \
		-DCMAKE_C_FLAGS="${CFLAGS} -I${WRKSRC}/libdispatch/BlocksRuntime -I${LOCALBASE}/include" \
		-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${WRKSRC}/libdispatch/BlocksRuntime -I${LOCALBASE}/include" \
		-DCMAKE_OBJC_FLAGS="${OBJCFLAGS} -I${WRKSRC}/libdispatch/BlocksRuntime -I${LOCALBASE}/include" \
		-DCMAKE_OBJCXX_FLAGS="${OBJCXXFLAGS} -I${WRKSRC}/libdispatch/BlocksRuntime -I${LOCALBASE}/include" \
		-DCMAKE_EXE_LINKER_FLAGS="-L${WRKBUILD} -lobjc2 -L/usr/local/lib -lBlocksRuntime -lpthread -lc++abi" \
		${WRKSRC}
	cd ${TEST_WRKBUILD} && ${SETENV} ${MAKE_ENV} \
		cmake --build . ${_MAKE_VERBOSE} -j ${MAKE_JOBS} && \
		cd ${TEST_WRKBUILD} && ${SETENV} ${MAKE_ENV} \
			ctest --output-on-failure

.include <bsd.port.mk>
