# $OpenBSD: Makefile,v 1.9 2013/11/30 09:20:44 jasper Exp $

COMMENT =	GNUstep libobjc2 objective-c runtime
BROKEN-hppa =	missing asm impl in block_trampolines.S
BROKEN-mips64 =	binutils < 2.18 lack support for symbolic register naming
NOT_FOR_ARCHS = ${GCC3_ARCHS}

# note: this port does not use the gnustep module
DISTNAME =	libobjc2-1.7
REVISION =	0
PKGNAME =	gnustep-${DISTNAME}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	x11/gnustep devel

SHARED_LIBS +=	objc2	1.0
SHARED_LIBS +=  objcxx	0.0

HOMEPAGE =	http://www.gnustep.org/
MASTER_SITES =	http://download.gna.org/gnustep/

MODULES =	devel/cmake lang/clang
WANTLIB += 	m stdc++ pthread

MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c++

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
