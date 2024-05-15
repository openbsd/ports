# deno only supports amd64 and arm64
ONLY_FOR_ARCHS =	amd64 aarch64
COMMENT =		runtime for JavaScript and TypeScript

DPB_PROPERTIES =	parallel

USE_WXNEEDED =		Yes

VERSION =		1.43.3
REVISION =		0
HOMEPAGE =		https://deno.com/runtime

DISTNAME =		deno-${VERSION}
DISTFILES =		${DISTNAME}{deno_src}${EXTRACT_SUFX}
SITES 	=		https://github.com/denoland/deno/releases/download/v${VERSION}/

MAINTAINER =		Volker Schlecht <openbsd-ports@schlecht.dev>

CATEGORIES =		lang

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo
MODCARGO_CRATES_KEEP +=	libsqlite3-sys \
			libz-sys

MODCARGO_ENV +=		V8_FROM_SOURCE=1 \
			GN=${LOCALBASE}/bin/gn \
			NINJA=${LOCALBASE}/bin/ninja \
			CLANG_BASE_PATH=/usr \
			HOME=${PORTHOME}

# Makes the build look more alive while compiling v8
MODCARGO_BUILD_ARGS +=	-vv

MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

MAKE_ENV =		${MODCARGO_ENV}

COMPILER =		base-clang
WANTLIB +=		${MODCARGO_WANTLIB} ${COMPILER_LIBCXX} m execinfo ffi zstd

BUILD_DEPENDS =		databases/sqlite3 \
			devel/cmake \
			devel/gmake \
			devel/gn \
			devel/ninja \
			devel/protobuf-c \
			textproc/oniguruma

LIB_DEPENDS =		archivers/zstd \
			devel/libffi

.include "crates.inc"

CONFIGURE_STYLE =	cargo

DOCDIR =		${PREFIX}/share/doc/deno
WRKDIST =		${WRKDIR}/deno
PORTHOME =		${WRKSRC}

DENO_TS_V =		0.16.1
V8_CARGO_V =		0.91.1

V8_DISTDIR =		${MODCARGO_VENDOR_DIR}/v8-${V8_CARGO_V}
V8_BPGO_DIR =		${V8_DISTDIR}/v8/tools/builtins-pgo

SUBST_VARS +=		WRKBUILD

post-patch:
	mkdir -p ${V8_BPGO_DIR}/{x64.profile,arm64.profile}
	${SUBST_CMD} ${V8_DISTDIR}/v8/tools/run.py
	cd ${WRKSRC} && ${SUBST_CMD} \
	    cli/main.rs \
	    cli/mainrt.rs \
	    cli/standalone/binary.rs \
	    cli/standalone/mod.rs \
	    runtime/ops/os/mod.rs
	cp ${WRKSRC}/cli/napi/generated_symbol_exports_list_linux.def \
	    ${WRKSRC}/cli/napi/generated_symbol_exports_list_openbsd.def

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/deno ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/{LICENSE.md,README.md} ${DOCDIR}

.include <bsd.port.mk>
