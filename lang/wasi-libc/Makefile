COMMENT =	C standard library for WebAssembly System Interface

GH_ACCOUNT =	WebAssembly
GH_PROJECT =	wasi-libc
GH_COMMIT =	e9524a0980b9bb6bb92e87a41ed1055bdda5bb86
DISTNAME =	wasi-libc-0.20250204

DISTFILES =	${GH_DISTFILE}
DISTFILES.h = 	wasi-libc-llvm13-std-headers.tar.gz
SITES.h =	https://nerd.hu/distfiles/

CATEGORIES =	lang

# Apache-2.0 with LLVM Exceptions, Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

COMPILER =	ports-clang
COMPILER_LANGS =c
MODCLANG_VERSION =	19
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
		${PREFIX}/share/wasi-sysroot/include/wasm32-wasi
	
.include <bsd.port.mk>
