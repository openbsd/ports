# deno only supports amd64 and arm64
ONLY_FOR_ARCHS =	amd64 aarch64
DPB_PROPERTIES =	parallel

# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
USE_NOEXECONLY =	Yes
USE_WXNEEDED =		Yes

COMMENT =		runtime for JavaScript and TypeScript

V =			2.9.1
DIST_TUPLE =		github denoland deno v${V} .

HOMEPAGE =		https://deno.com

MAINTAINER =		Volker Schlecht <volker@openbsd.org>

CATEGORIES =		lang

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} m execinfo ffi zstd

MODULES =		devel/cargo lang/clang

MODCLANG_VERSION =	22

MODCARGO_CRATES_KEEP +=	libsqlite3-sys \
			libz-sys

MODCARGO_ENV +=		V8_FROM_SOURCE=1 \
			GN=${LOCALBASE}/bin/gn \
			NINJA=${LOCALBASE}/bin/ninja \
			CLANG_BASE_PATH=/usr \
			HOME=${PORTHOME} \
			LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib \
			GN_ARGS="clang_use_chrome_plugins=false \
			extra_cppflags=\"-idirafter ${LOCALBASE}/include -idirafter ${X11BASE}/include\" \
			extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib\" \
			fatal_linker_warnings=false \
			is_clang=true \
			use_custom_libcxx=true \
			use_custom_libunwind=true \
			use_libcxx_modules=false \
			use_udev=true \
			use_sysroot=false \
			use_glib=false \
			v8_enable_cet_ibt=true"

# Makes the build look more alive while compiling v8
MODCARGO_BUILD_ARGS +=	-vv

MODCARGO_RUSTFLAGS +=	-L${LOCALBASE}/lib

MODCARGO_TEST_ARGS +=	--no-fail-fast

MAKE_ENV =		${MODCARGO_ENV}

COMPILER =		ports-clang

BUILD_DEPENDS =		databases/sqlite3 \
			devel/cmake/core \
			devel/gmake \
			devel/gn \
			devel/ninja \
			devel/protobuf-c \
			devel/rust-bindgen \
			lang/rust,-rustfmt \
			${RUN_DEPENDS}

LIB_DEPENDS =		archivers/zstd \
			devel/libffi

RUN_DEPENDS =		sysutils/libudev-openbsd

.include "crates.inc"

CONFIGURE_STYLE =	cargo

DOCDIR =		${PREFIX}/share/doc/deno
PORTHOME =		${WRKSRC}

DENO_CORE_ICUDATA_V =	0.77.0
V8_CARGO_V =		149.4.0

V8_DISTDIR =		${MODCARGO_VENDOR_DIR}/v8-${V8_CARGO_V}
V8_BPGO_DIR =		${V8_DISTDIR}/v8/tools/builtins-pgo

SUBST_VARS +=		WRKBUILD WRKSRC

post-patch:
	mkdir -p ${V8_BPGO_DIR}/{x64.profile,arm64.profile}
	${SUBST_CMD} ${V8_DISTDIR}/v8/tools/run.py
	cd ${WRKSRC} && ${SUBST_CMD} \
	    cli/task_runner.rs \
	    cli/tools/jupyter/install.rs \
	    ext/os/lib.rs
	cp ${WRKSRC}/ext/napi/generated_symbol_exports_list_linux.def \
	    ${WRKSRC}/ext/napi/generated_symbol_exports_list_openbsd.def
	mkdir ${V8_DISTDIR}/third_party/icu/common
	cp ${MODCARGO_VENDOR_DIR}/deno_core_icudata-${DENO_CORE_ICUDATA_V}/src/icudtl.dat \
	    ${V8_DISTDIR}/third_party/icu/common/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/target/release/deno ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/{LICENSE.md,README.md} ${DOCDIR}

.include <bsd.port.mk>
