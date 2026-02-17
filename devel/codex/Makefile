# ring-v0.17 does not support this arch
NOT_FOR_ARCHS = 	sparc64

COMMENT =		OpenAI terminal-based coding agent

V =			0.102.0
GH_ACCOUNT =		openai
GH_PROJECT =		codex
GH_TAGNAME =		rust-v${V}
PKGNAME =		codex-${V}

# only build the Rust workspace (the repo also contains JS tooling).
WRKSRC =		${WRKDIST}/codex-rs

DIST_TUPLE += github nornagon crossterm 87db8bfa6dc99427fd3b071681b07fc31c6ce995 ./crossterm
DIST_TUPLE += github nornagon ratatui 9b2ad1298408c45918ee9f8241a6f95498cdbed2 ./ratatui
DIST_TUPLE += github openai-oss-forks tokio-tungstenite 132f5b39c862e3a970f731d709608b3e6276d5f6 ./tokio-tungstenite
DIST_TUPLE += github openai-oss-forks tungstenite-rs 9200079d3b54a1ff51072e24d81fd354f085156f ./tungstenite
DIST_TUPLE += github helix-editor nucleo 4253de9faabb4e5c6d81d946a5e35a90f87347ee ./nucleo
DIST_TUPLE += github dzbarsky rules_rust b56cbaa8465e74127f1ea216f813cd377295ad81 ./runfiles

CATEGORIES =		devel

HOMEPAGE =		https://github.com/openai/codex

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} crypto dbus-1 m ssl util

BUILD_DEPENDS =		devel/cmake/core \
			devel/git \
			databases/sqlite3

LIB_DEPENDS =		x11/dbus

RUN_DEPENDS =		textproc/ripgrep

MODULES =		devel/cargo
CONFIGURE_STYLE = 	cargo

# libclang.so
MODULES +=		lang/clang
MODCARGO_ENV +=		LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib \
			LD_LIBRARY_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

MODCARGO_CRATES_KEEP +=	libsqlite3-sys
MODCARGO_CRATES_KEEP +=	zstd-sys

# install the CLI crate ('codex')
MODCARGO_INSTALL_TARGET_PATHS = cli

# test suite expects network access and a configured OpenAI account
NO_TEST =	Yes

post-patch:
	cd ${WRKSRC} && ${SUBST_CMD} arg0/src/lib.rs

post-build:
.for s in bash fish zsh
	cd ${WRKBUILD}/target/release && \
		./codex completion $s > codex.$s
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/rustic \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${WRKBUILD}/target/release/codex.bash \
		${PREFIX}/share/bash-completion/completions/codex
	${INSTALL_DATA} ${WRKBUILD}/target/release/codex.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKBUILD}/target/release/codex.zsh \
		${PREFIX}/share/zsh/site-functions/_codex
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/codex
	cp -r ${WRKDIST}/docs/* ${PREFIX}/share/doc/codex/

.include "crates.inc"

.include <bsd.port.mk>
