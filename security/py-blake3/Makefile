COMMENT =	Python bindings for the Rust blake3 crate

MODPY_DISTV =	1.0.9
DISTNAME =	blake3-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	security

# CC0-1.0 OR Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB =	${MODCARGO_WANTLIB}

MODULES =	lang/python
MODPY_PI =	Yes
MODPY_PYBUILD =	maturin

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/py-cffi
TEST_DEPENDS = 	math/py-numpy

.include "crates.inc"

.include <bsd.port.mk>
