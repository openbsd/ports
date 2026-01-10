ONLY_FOR_ARCHS=	${RUST_ARCHS}

COMMENT=	develop crates with pyo3, rust-cpython and cffi bindings

GH_ACCOUNT=	PyO3
GH_PROJECT=	maturin
GH_TAGNAME=	v1.11.4

CATEGORIES=	devel

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB +=	${MODCARGO_WANTLIB} crypto m ssl

MODULES=	devel/cargo

CONFIGURE_STYLE= cargo

# disable rustls/ring for sparc64 support
MODCARGO_NO_DEFAULT_FEATURES= yes
MODCARGO_FEATURES=	cli-completion native-tls scaffolding upload

MODCARGO_CRATES_KEEP=	zstd-sys

.include "crates.inc"

.include <bsd.port.mk>
