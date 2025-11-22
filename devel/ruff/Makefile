# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	Python linter and code formatter

GH_ACCOUNT =	astral-sh
GH_PROJECT =	ruff
GH_TAGNAME =	0.14.6

# Rust crates downloaded via git
LSPTYPES =	3512a9f33eadc5402cfab1b8f7340824c8ca1439
SALSA =		a885bb4c4c192741b8a17418fef81a71e33d111e

DIST_TUPLE +=	github astral-sh lsp-types ${LSPTYPES} ../lsp-types
DIST_TUPLE +=	github salsa-rs salsa ${SALSA} ../salsa

CATEGORIES =	devel textproc

# https://github.com/astral-sh/ruff
HOMEPAGE =	https://docs.astral.sh/ruff

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m zstd

LIB_DEPENDS +=	archivers/zstd
TEST_DEPENDS+=	${LIB_DEPENDS}

MODULES =	devel/cargo

CONFIGURE_STYLE =	cargo

MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

SEPARATE_BUILD=	Yes

# Generate shell completions
pre-install:
	${MODCARGO_TARGET_DIR}/release/ruff generate-shell-completion bash \
		> ${WRKSRC}/ruff.bash
	${MODCARGO_TARGET_DIR}/release/ruff generate-shell-completion fish \
		> ${WRKSRC}/ruff.fish
	${MODCARGO_TARGET_DIR}/release/ruff generate-shell-completion zsh \
		> ${WRKSRC}/ruff.zsh

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/ruff ${PREFIX}/bin/

	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKSRC}/ruff.bash \
		${PREFIX}/share/bash-completion/completions/ruff
	${INSTALL_DATA} ${WRKSRC}/ruff.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKSRC}/ruff.zsh \
		${PREFIX}/share/zsh/site-functions/_ruff

# Skip tests with errors (generate_json_schema, idx)
MODCARGO_TEST_ARGS +=	-- --skip generate_json_schema --skip idx

# TODO: fix tests
# test commands::format::tests::error_diagnostics ... FAILED
# test unix::symlinked_module_search_path ... FAILED

.include "crates.inc"

.include <bsd.port.mk>
