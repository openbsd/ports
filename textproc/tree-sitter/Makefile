# NOTE: To keep the dependency tree small, the tree-sitter-cli program
# (written in Rust) is ported separately as textproc/tree-sitter-cli.

COMMENT =	parser generator tool and incremental parsing library

GH_ACCOUNT =		tree-sitter
GH_PROJECT =		tree-sitter
GH_TAGNAME =		v0.26.8

SHARED_LIBS +=		tree-sitter	6.0 # 0.26.8

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
