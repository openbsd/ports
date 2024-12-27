COMMENT =		Python bindings for Rust's persistent data structures (rpds)

MODPY_DISTV =		0.20.0
REVISION =		2
DISTNAME =		rpds_py-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/g}

CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

.include "crates.inc"

.include <bsd.port.mk>
