# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =	powerpc64 riscv64 sparc64

COMMENT =	develop crates with pyo3, rust-cpython and cffi bindings

GH_ACCOUNT =	PyO3
GH_PROJECT =	maturin
GH_TAGNAME =	v0.12.9
REVISION =	2

CATEGORIES =	devel

MAINTAINER =	Dimitri Karamazov <deserter666@danwin1210.me>

# APACHE 2.0
PERMIT_PACKAGE =Yes

WANTLIB += bz2 c c++abi m pthread

DISTFILES +=	${DISTNAME}${EXTRACT_SUFX}

MODULES =	devel/cargo

CONFIGURE_STYLE =cargo

BUILD_DEPENDS =	security/rust-ring
LIB_DEPENDS =	archivers/bzip2

.include "modules.inc"

.include <bsd.port.mk>
