# deno only supports amd64 and arm64
ONLY_FOR_ARCHS =	amd64 aarch64
COMMENT =		runtime for JavaScript and TypeScript

USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes

VERSION =		1.32.5
REVISION =		2
HOMEPAGE =		https://deno.com/runtime

DISTNAME =		deno-${VERSION}
DISTFILES =		${DISTNAME}{deno_src}${EXTRACT_SUFX}
MASTER_SITES =		https://github.com/denoland/deno/releases/download/v${VERSION}/

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

CATEGORIES =		lang

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
MODCARGO_CRATES_KEEP +=	libsqlite3-sys \
			libz-sys

MODCARGO_CRATES_UPDATE += dprint-plugin-json

MODCARGO_ENV +=		V8_FROM_SOURCE=1 \
			GN=${LOCALBASE}/bin/gn \
			NINJA=${LOCALBASE}/bin/ninja \
			CLANG_BASE_PATH=/usr \
			HOME=${PORTHOME}

MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

MAKE_ENV =		${MODCARGO_ENV}

COMPILER =		base-clang
WANTLIB +=		${MODCARGO_WANTLIB} ${COMPILER_LIBCXX} m execinfo ffi zstd

BUILD_DEPENDS =		databases/sqlite3 \
			devel/gmake \
			devel/gn \
			devel/llvm \
			devel/ninja

LIB_DEPENDS =		archivers/zstd \
			devel/libffi

BUILD_DEPENDS +=	security/rust-ring

.include "crates.inc"

CONFIGURE_STYLE =	cargo

DOCDIR =		${PREFIX}/share/doc/deno
WRKDIST =		${WRKDIR}/deno
PORTHOME =		${WRKSRC}

V8_CARGO_V =		0.68.0

V8_DISTDIR =		${MODCARGO_VENDOR_DIR}/v8-${V8_CARGO_V}
V8_BPGO_DIR =		${V8_DISTDIR}/v8/tools/builtins-pgo

SUBST_VARS +=		WRKBUILD

post-patch:
	mkdir -p ${V8_BPGO_DIR}/{x64.profile,arm64.profile}
	${SUBST_CMD} ${V8_DISTDIR}/v8/tools/run.py
	cd ${WRKSRC} && ${SUBST_CMD} \
	    cli/standalone.rs \
	    cli/tools/standalone.rs \
	    modcargo-crates/deno_task_shell-0.11.0/src/shell/commands/executable.rs \
	    runtime/ops/os/mod.rs

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/deno ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/{LICENSE.md,README.md} ${DOCDIR}

.include <bsd.port.mk>
