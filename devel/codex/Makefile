ONLY_FOR_ARCHS =	amd64 aarch64

# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64"
USE_NOEXECONLY =	Yes
.endif

COMMENT =		OpenAI terminal-based coding agent

DPB_PROPERTIES =	parallel

USE_WXNEEDED =		Yes

V =			0.144.6
GH_ACCOUNT =		openai
GH_PROJECT =		codex
GH_TAGNAME =		rust-v${V}
PKGNAME =		codex-${V}

# only build the Rust workspace (the repo also contains JS tooling).
WRKSRC =		${WRKDIST}/codex-rs

DIST_TUPLE += github nornagon crossterm 87db8bfa6dc99427fd3b071681b07fc31c6ce995 ./crossterm
DIST_TUPLE += github nornagon ratatui 9b2ad1298408c45918ee9f8241a6f95498cdbed2 ./ratatui
DIST_TUPLE += github openai-oss-forks tokio-tungstenite 0e5b2d73aa18dd9f0a50ee9ff199d5aef7594186 ./tokio-tungstenite
DIST_TUPLE += github openai-oss-forks tungstenite-rs 4fffad30fe373adbdcffab9545e9e9bf4f2fc19f ./tungstenite
DIST_TUPLE += github helix-editor nucleo 4253de9faabb4e5c6d81d946a5e35a90f87347ee ./nucleo
DIST_TUPLE += github dzbarsky rules_rust b56cbaa8465e74127f1ea216f813cd377295ad81 ./runfiles

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

CATEGORIES =		devel

HOMEPAGE =		https://github.com/openai/codex

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} bz2 crypto dbus-1 execinfo lzma
WANTLIB += m onig ssl util z

BUILD_DEPENDS =		devel/cmake/core \
			devel/git \
			devel/gn \
			devel/ninja \
			databases/sqlite3

LIB_DEPENDS =		textproc/oniguruma \
			x11/dbus

RUN_DEPENDS =		lang/python/3 \
			textproc/ripgrep

MODULES =		devel/cargo

CONFIGURE_STYLE = 	cargo

COMPILER =		base-clang

# libclang.so
MODULES +=		lang/clang
MODCARGO_ENV +=		CLANG_BASE_PATH=/usr \
			LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib \
			LD_LIBRARY_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib

MODCARGO_CRATES_KEEP +=	libsqlite3-sys
MODCARGO_CRATES_KEEP +=	zstd-sys

MODCARGO_ENV +=		V8_FROM_SOURCE=1 \
			GN=${LOCALBASE}/bin/gn \
			NINJA=${LOCALBASE}/bin/ninja \
			GN_ARGS="clang_use_chrome_plugins=false \
			extra_cppflags=\"-idirafter ${LOCALBASE}/include -idirafter ${X11BASE}/include\" \
			extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib\" \
			fatal_linker_warnings=false \
			is_clang=true \
			use_custom_libcxx=true \
			use_custom_libunwind=true \
			use_libcxx_modules=false \
			use_sysroot=false \
			use_glib=false \
			v8_enable_cet_ibt=true"

# Makes the build look more alive while compiling v8
MODCARGO_BUILD_ARGS +=	-vv

# build only the CLI crate ('codex')
MODCARGO_INSTALL_TARGET_PATHS = cli
MODCARGO_BUILD_ARGS +=		-p codex-cli --bin codex

MAKE_ENV =		${MODCARGO_ENV}

# test suite expects network access and a configured OpenAI account
NO_TEST =	Yes

DENO_CORE_ICUDATA_V =	0.77.0
V8_CARGO_V =		149.2.0

V8_DISTDIR =		${MODCARGO_VENDOR_DIR}/v8-${V8_CARGO_V}

post-patch:
	cd ${WRKSRC} && ${SUBST_CMD} arg0/src/lib.rs \
		core/src/tools/runtimes/apply_patch.rs
	mkdir ${V8_DISTDIR}/third_party/icu/common
	cp ${MODCARGO_VENDOR_DIR}/deno_core_icudata-${DENO_CORE_ICUDATA_V}/src/icudtl.dat \
	    ${V8_DISTDIR}/third_party/icu/common/

post-build:
.for s in bash fish zsh
	cd ${WRKBUILD}/target/release && \
		./codex completion $s > codex.$s
.endfor

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions \
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
