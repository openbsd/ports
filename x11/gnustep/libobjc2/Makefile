# $OpenBSD: Makefile,v 1.26 2020/04/13 21:43:55 jca Exp $

BROKEN-hppa =	missing asm impl in block_trampolines.S
BROKEN-mips64 =	binutils < 2.18 lack support for symbolic register naming
NOT_FOR_ARCHS = ${GCC3_ARCHS}

COMMENT =	GNUstep libobjc2 objective-c runtime

# note: this port does not use the gnustep module
VERSION =	1.8.1
GH_ACCOUNT =	gnustep
GH_PROJECT =	libobjc2
GH_TAGNAME =	v${VERSION}
DISTNAME =	libobjc2-${VERSION:S/_//}
PKGNAME =	gnustep-${DISTNAME}
REVISION =	4

SHARED_LIBS +=	objc2	1.1
SHARED_LIBS +=  objcxx	0.0

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

MAKE_FLAGS +=	LIBOBJCLIBNAME=objc2 \
		LIBOBJC=libobjc2 \
		HEADER_DIR=${DESTDIR}${PREFIX}/include/gnustep \
		VERSION=${LIBobjc2_VERSION} \
		SILENT=""

CONFIGURE_ARGS +=       -DLIBOBJC_NAME=objc2 -DINCLUDE_DIRECTORY=gnustep/objc \
			-DCMAKE_MODULE_PATH=${PREFIX}/share/llvm/cmake \
                        -DBUILD_STATIC_LIBOBJC=On \
                        -DLLVM_OPTS=Off \
                        -DTESTS=Off

MAKE_FLAGS +=   LIBOBJCLIBNAME=objc2 \
                LIBOBJC=libobjc2

.include <bsd.port.mk>
