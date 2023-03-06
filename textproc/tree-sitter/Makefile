COMMENT =	parser generator tool and incremental parsing library

GH_ACCOUNT =		tree-sitter
GH_PROJECT =		tree-sitter
GH_TAGNAME =		v0.20.7

SHARED_LIBS +=		tree-sitter	2.1 # 0.20.7

SUBST_VARS +=		LIBtree-sitter_VERSION

CATEGORIES =		textproc

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi pthread

# fix sparc64 build
COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo
# for riscv64 and powerpc64, please keep: cc >= 1.0.73 and libc >= 0.2.113
MODCARGO_CRATES_UPDATE =	cc libc

.include "crates.inc"

MAKE_ENV =		DESTDIR="" \
			LIBDIR="${LOCALBASE}/lib" \
			INCLUDEDIR="${LOCALBASE}/include"

SEPARATE_BUILD =	Yes

USE_GMAKE =		Yes

CONFIGURE_STYLE =	cargo

post-patch:
	${SUBST_CMD} ${WRKSRC}/Makefile

do-build:
	cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} ${ALL_TARGET}
	${MODCARGO_BUILD_TARGET}

do-install:
	cd ${WRKSRC} && \
		${SETENV} ${MAKE_ENV} ${_FAKE_SETUP} \
		${MAKE_PROGRAM} ${ALL_FAKE_FLAGS} -f ${MAKE_FILE} install
	${INSTALL_PROGRAM} ${WRKBUILD}/target/release/tree-sitter \
		${PREFIX}/bin

.include <bsd.port.mk>
