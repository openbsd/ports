COMMENT =	C standard library for WebAssembly System Interface

GH_ACCOUNT =	WebAssembly
GH_PROJECT =	wasi-libc
GH_COMMIT =	05cd0af0af4b5a191117d47a182adff1d6546b87
DISTNAME =	wasi-libc-0.20220413
REVISION =	0

DISTFILES =	${GH_DISTFILE}
DISTFILES.h = 	wasi-libc-llvm${MODCLANG_VERSION}-std-headers.tar.gz
SITES.h =	https://nerd.hu/distfiles/

CATEGORIES =	lang

# Apache-2.0 with LLVM Exceptions, Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

COMPILER =	ports-clang
USE_GMAKE =	yes
ALL_TARGET =	finish

MAKE_ENV +=	AR=${LOCALBASE}/bin/llvm-ar-${MODCLANG_VERSION} \
		NM=${LOCALBASE}/bin/llvm-nm-${MODCLANG_VERSION} \
		INSTALL_DIR=${WRKINST}${PREFIX}/share/wasi-sysroot

SUBST_VARS +=	WRKDIR

post-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

post-install:
	${INSTALL_DATA} ${WRKDIR}/sysroot/include/* \
		${PREFIX}/share/wasi-sysroot/include
	
.include <bsd.port.mk>
