COMMENT =	parser generator tool and incremental parsing library

GH_ACCOUNT =		tree-sitter
GH_PROJECT =		tree-sitter
GH_TAGNAME =		v0.20.8
REVISION =		0

SHARED_LIBS +=		tree-sitter	3.0

SUBST_VARS +=		LIBtree-sitter_VERSION

CATEGORIES =		textproc

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

# fix sparc64 build
COMPILER =		base-clang ports-gcc

MAKE_ENV =		DESTDIR="" \
			LIBDIR="${LOCALBASE}/lib" \
			INCLUDEDIR="${LOCALBASE}/include"

USE_GMAKE =		Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/Makefile

.include <bsd.port.mk>
