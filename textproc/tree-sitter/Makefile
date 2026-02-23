# NOTE: To keep the dependency tree small, the tree-sitter-cli program
# (written in Rust) is ported separately as textproc/tree-sitter-cli.

COMMENT =	parser generator tool and incremental parsing library

GH_ACCOUNT =		tree-sitter
GH_PROJECT =		tree-sitter
# NOTE: neovim-0.11.* only builds with tree-sitter-0.25.x, so only update
# tree-sitter at the same time as a neovim-0.12.x update (once released).
# https://github.com/neovim/neovim/issues/36914
GH_TAGNAME =		v0.25.10

SHARED_LIBS +=		tree-sitter	5.0 # 0.25.3

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
