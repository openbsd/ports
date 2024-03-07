ONLY_FOR_ARCHS =	${LLD_ARCHS}

COMMENT =	GNUstep libobjc2 objective-c runtime

# note: this port does not use the gnustep module
VERSION =	2.2
REVISION =	4
GH_ACCOUNT =	gnustep
GH_PROJECT =	libobjc2
GH_TAGNAME =	v${VERSION}
DISTNAME =	libobjc2-${VERSION:S/_//}
PKGNAME =	gnustep-${DISTNAME}

SHARED_LIBS +=	objc2	3.0
SHARED_LIBS +=  objcxx	2.0

CATEGORIES =	x11/gnustep devel

HOMEPAGE =	http://www.gnustep.org/

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =	base-clang
MODULES =	devel/cmake

# clang on sparc64 doesn't use the integrated assembler by default
# gas(1), in turn, doesn't support the generated assembly
.if ${MACHINE_ARCH} == "sparc64"
CFLAGS +=	-fintegrated-as
.endif

BUILD_DEPENDS +=	devel/robin-map
MAKE_FLAGS +=	LIBOBJCLIBNAME=objc2 \
		LIBOBJC=libobjc2 \
		HEADER_DIR=${DESTDIR}${PREFIX}/include/gnustep \
		VERSION=${LIBobjc2_VERSION} \
		SILENT=""

CONFIGURE_ARGS +=       -DLIBOBJC_NAME=objc2 -DINCLUDE_DIRECTORY=gnustep/objc \
			-DCMAKE_MODULE_PATH=${PREFIX}/share/llvm/cmake \
                        -DBUILD_STATIC_LIBOBJC=On \
                        -DLLVM_OPTS=Off \
                        -DTESTS=Off \
			-DCMAKE_CXX_FLAGS="-I${LOCALBASE}/include"

MAKE_FLAGS +=   LIBOBJCLIBNAME=objc2 \
                LIBOBJC=libobjc2

# The Block.h would conflict with devel/libdispatch
post-install:
	mv ${PREFIX}/include/Block* ${PREFIX}/include/gnustep/

.include <bsd.port.mk>
