COMMENT =	C standard library for WebAssembly System Interface

GH_ACCOUNT =	WebAssembly
GH_PROJECT =	wasi-libc
GH_COMMIT =	wasi-sdk-29
DISTNAME =	wasi-libc-0.20251114

DISTFILES =	${GH_DISTFILE}
DISTFILES.h = 	wasi-libc-llvm13-std-headers.tar.gz
SITES.h =	https://nerd.hu/distfiles/

# downloads a static wasi libclang_rt.builtins
DISTFILES.builtins =	libclang_rt.builtins-wasm32-wasi-25.0.tar.gz
SITES.builtins =	https://github.com/WebAssembly/wasi-sdk/releases/download/wasi-sdk-25/

CATEGORIES =	lang

# Apache-2.0 with LLVM Exceptions, Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

COMPILER =	ports-clang
COMPILER_LANGS =c
MODCLANG_VERSION =	19
USE_GMAKE =	yes
ALL_TARGET =	finish
BUILD_DEPENDS =	shells/bash

MAKE_ENV +=	AR=${LOCALBASE}/bin/llvm-ar-${MODCLANG_VERSION} \
		NM=${LOCALBASE}/bin/llvm-nm-${MODCLANG_VERSION} \
		CHECK_SYMBOLS=yes \
		BUILTINS_LIB=${WRKDIR}/libclang_rt.builtins-wasm32-wasi-25.0/libclang_rt.builtins-wasm32.a \
		INSTALL_DIR=${WRKINST}${PREFIX}/share/wasi-sysroot

SUBST_VARS +=	WRKDIR

post-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile

post-install:
	${INSTALL_DATA} ${WRKDIR}/sysroot/include/* \
		${PREFIX}/share/wasi-sysroot/include/wasm32-wasi
	
.include <bsd.port.mk>
