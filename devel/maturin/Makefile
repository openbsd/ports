# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	develop crates with pyo3, rust-cpython and cffi bindings

GH_ACCOUNT =	PyO3
GH_PROJECT =	maturin
GH_TAGNAME =	v1.5.1

CATEGORIES =	devel

# APACHE 2.0
PERMIT_PACKAGE =Yes

WANTLIB +=	${MODCARGO_WANTLIB} bz2 m

MODULES =	devel/cargo

CONFIGURE_STYLE =cargo

LIB_DEPENDS =	archivers/bzip2

.include "crates.inc"

.include <bsd.port.mk>
