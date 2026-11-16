COMMENT =		Rust library for TON wallet applications

GH_ACCOUNT =		i582
GH_PROJECT =		wallet-engine
GH_TAGNAME =		v0.0.7

# keep in sync with net/tdesktop
TD_TAG =		v7.4.4
TD_SNAP_YAML =		https://github.com/telegramdesktop/tdesktop/raw/refs/tags/${TD_TAG}/snap/snapcraft.yaml
# see get-patch-commit target
TD_PATCH_COMMIT =	23d349a3ff09dbc1fa8127ce39ba9223de0edf21
PATCHFILES.td =		${TD_PATCH_COMMIT}{wallet-engine}.patch
SITES.td =		https://github.com/desktop-app/patches/raw/${TD_PATCH_COMMIT}/
PATCH_DIST_STRIP =	-p1

CATEGORIES =		devel

SHARED_LIBS =		wallet_engine  0.0

MAINTAINER =		Mykyta Nazarenko <mn@superpc.suicide.solutions>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

get-patch-commit:
	@ftp -o- ${TD_SNAP_YAML} 2>/dev/null | \
		yq -r '.parts.patches."source-commit"'

post-build:
	cd ${WRKSRC}/bindgen/cpp && ${SETENV} ${MAKE_ENV} \
	    ${MODCARGO_CARGO_BIN} build --release --offline \
	    ${MODCARGO_BUILD_ARGS}

	${INSTALL_DATA_DIR} ${WRKSRC}/bindings/cpp-experimental
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	    ${WRKSRC}/bindgen/cpp/target/release/uniffi-bindgen-cpp \
	    --library --out-dir ${WRKSRC}/bindings/cpp-experimental \
	    ${MODCARGO_TARGET_DIR}/release/libwallet_engine.so

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/wallet_engine
	${INSTALL_DATA} ${WRKSRC}/bindings/cpp-experimental/* \
	    ${PREFIX}/include/wallet_engine
	${INSTALL_DATA} ${MODCARGO_TARGET_DIR}/release/libwallet_engine.so \
	    ${PREFIX}/lib/libwallet_engine.so.${LIBwallet_engine_VERSION}

.include "crates.inc"
.include <bsd.port.mk>
