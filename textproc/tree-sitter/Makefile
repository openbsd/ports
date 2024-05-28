# XXX To keep the requirements list small, do not build the tree-sitter
# program (written in rust) from this port.  Use a new port instead.

COMMENT =	parser generator tool and incremental parsing library

GH_ACCOUNT =		tree-sitter
GH_PROJECT =		tree-sitter
GH_TAGNAME =		v0.22.6

SHARED_LIBS +=		tree-sitter	4.0 # 0.22.6

CATEGORIES =		textproc

# Unlicense/MIT
PERMIT_PACKAGE =	Yes

# C11
COMPILER = 		base-clang ports-gcc
COMPILER_LANGS = 	c

MAKE_ENV =		DESTDIR="" \
			LIBDIR="${LOCALBASE}/lib" \
			INCLUDEDIR="${LOCALBASE}/include"

USE_GMAKE =		Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/Makefile

# Tests need rust/cargo and bash.
# Script/fetch-fixtures downloads tree-sitter grammars from GitHub.
NO_TEST =	Yes

.include <bsd.port.mk>
