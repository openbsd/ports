COMMENT =	Python bindings for Rust's persistent data structures (rpds)

MODPY_DISTV =	0.22.3
DISTNAME =	rpds_py-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME:S/_/-/g}

CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES =	lang/python
MODPY_PYBUILD =	maturin
MODPY_PI =	Yes

.include "crates.inc"

.include <bsd.port.mk>
