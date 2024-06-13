COMMENT =	automatically generates Rust FFI bindings (C and C++)

GH_ACCOUNT =	rust-lang
GH_PROJECT =	rust-bindgen
GH_TAGNAME =	v0.69.4

CATEGORIES =	devel

HOMEPAGE =	https://rust-lang.github.io/rust-bindgen/

# BSD3
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

MODCARGO_INSTALL_TARGET_PATHS =	bindgen-cli

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

TEST_DEPENDS +=	devel/llvm/17

# for tests
MAKE_ENV +=	LIBCLANG_PATH=${LOCALBASE}/llvm17/lib

post-install:
	mv ${PREFIX}/bin/bindgen ${PREFIX}/libexec/rust-bindgen
	${INSTALL_SCRIPT} files/bindgen ${PREFIX}/bin/bindgen

do-test:
	${MODCARGO_CARGO_RUN} test \
		--manifest-path=${WRKSRC}/bindgen-tests/Cargo.toml \
		--release \
		${MODCARGO_TEST_ARGS}

.include "crates.inc"
.include <bsd.port.mk>
