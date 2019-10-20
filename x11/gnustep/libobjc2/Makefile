# $OpenBSD: Makefile,v 1.22 2019/10/20 08:03:03 ajacoutot Exp $

COMMENT =	GNUstep libobjc2 objective-c runtime
BROKEN-hppa =	missing asm impl in block_trampolines.S
BROKEN-mips64 =	binutils < 2.18 lack support for symbolic register naming
NOT_FOR_ARCHS = ${GCC3_ARCHS}

# note: this port does not use the gnustep module
VERSION =	1.8.1
GH_ACCOUNT =	gnustep
GH_PROJECT =	libobjc2
GH_TAGNAME =	v${VERSION}
DISTNAME =	libobjc2-${VERSION:S/_//}
PKGNAME =	gnustep-${DISTNAME}
CATEGORIES =	x11/gnustep devel
REVISION =	2

SHARED_LIBS +=	objc2	1.1
SHARED_LIBS +=  objcxx	0.0

HOMEPAGE =	http://www.gnustep.org/

MODULES =	devel/cmake 
WANTLIB += 	m ${LIBCXX} pthread

COMPILER =	base-clang ports-clang
MODCLANG_ARCHS =amd64 i386

MAKE_ENV +=	CPPFLAGS+=${CPPFLAGS}
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
