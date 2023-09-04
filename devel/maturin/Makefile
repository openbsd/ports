# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =	powerpc64 riscv64 sparc64

COMMENT =	develop crates with pyo3, rust-cpython and cffi bindings

GH_ACCOUNT =	PyO3
GH_PROJECT =	maturin
GH_TAGNAME =	v0.13.7
REVISION =	1

CATEGORIES =	devel

# APACHE 2.0
PERMIT_PACKAGE =Yes

WANTLIB += bz2 c c++abi m pthread

MODULES =	devel/cargo

CONFIGURE_STYLE =cargo

BUILD_DEPENDS =	security/rust-ring
LIB_DEPENDS =	archivers/bzip2

.include "crates.inc"

.include <bsd.port.mk>
