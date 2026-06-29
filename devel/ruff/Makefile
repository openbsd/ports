# ring-v0.17 does not support sparc64
NOT_FOR_ARCHS =	sparc64

COMMENT =	Python linter and code formatter

MODPY_DISTV =	0.15.20

GH_ACCOUNT =	astral-sh
GH_PROJECT =	ruff
GH_TAGNAME =	${MODPY_DISTV}

CATEGORIES =	devel textproc

# https://github.com/astral-sh/ruff
HOMEPAGE =	https://docs.astral.sh/ruff

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

TEST_DEPENDS +=	archivers/zstd

MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

MODULES =	lang/python
MODPY_PYBUILD =	maturin

# Overriding MODCARGO_CARGOTOML doesn't work properly here as it would
# result in incomplete output from modcargo-gen-crates.
do-build:
	${MODCARGO_CARGO_RUN} build \
		--manifest-path ${WRKSRC}/crates/ruff/Cargo.toml \
		--release ${MODCARGO_BUILD_ARGS}

# Generate shell completions
post-install:
.for i in bash fish zsh
	${PREFIX}/bin/ruff generate-shell-completion $i > ${WRKSRC}/ruff.$i
.endfor
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

do-test:
	@${MODCARGO_TEST_TARGET:S/maturin/cargo/}

# TODO: fix tests
# test commands::format::tests::error_diagnostics ... FAILED
# test unix::symlinked_module_search_path ... FAILED

.include "crates.inc"

.include <bsd.port.mk>
