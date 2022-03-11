COMMENT =	parser generator tool and incremental parsing library

GH_ACCOUNT =		tree-sitter
GH_PROJECT =		tree-sitter
GH_TAGNAME =		v0.20.1

SHARED_LIBS +=		tree-sitter	1.0 # 0.20.1

SUBST_VARS +=		LIBtree-sitter_VERSION

CATEGORIES =		textproc
MAINTAINER =		Paco Esteban <paco@openbsd.org>

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

# fix sparc64 build
COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo

.include "crates.inc"

PATCHORIG =		.openbsd.orig

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
