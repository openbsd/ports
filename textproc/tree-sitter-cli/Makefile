COMMENT =	tool to develop, test, and use Tree-sitter grammars

# Note: The CLI tool version does *not* have to match the version of the
# tree-sitter library.
V = 		0.26.5
GH_ACCOUNT =	tree-sitter
GH_PROJECT =	tree-sitter
GH_TAGNAME =	v${V}

# The tests require grammar files not in the source tarball. We provide our own
# tarball containing them.
#
# To generate the tarball, in a clone of the tree-sitter source, run:
#
#  $ git co ${GH_TAGNAME}
#  $ LIBCLANG_PATH=/usr/local/llvmXY/lib cargo xtask fetch-fixtures
#
# Then remove `.git` dirs from `test/fixtures/grammars` and tar up and host the
# resulting `grammars` directory.
DISTFILES.zoo =	tree-sitter-test-grammars-${V}.tar.gz
SITES.zoo =	https://theunixzoo.co.uk/distfiles/

PKGNAME =	tree-sitter-cli-${V}
CATEGORIES =	textproc
HOMEPAGE =	https://tree-sitter.github.io/tree-sitter/cli/
MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo lang/clang

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

# for rquickjs-sys build
MODCARGO_ENV =	LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/tree-sitter ${PREFIX}/bin/

MODCARGO_TEST_ARGS += -p tree-sitter-cli

# tests write to `$HOME` (e.g. `$HOME/.cache`).
PORTHOME = ${WRKDIR}

# Put test grammars in place.
post-extract:
	cp -r ${WRKDIR}/grammars/* ${WRKSRC}/test/fixtures/grammars/

# XXX: Generate and install shell completions (bash/fish/zsh)

.include "crates.inc"
.include <bsd.port.mk>
