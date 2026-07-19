COMMENT=	Python bindings to Rust's UUID library

MODPY_DISTV=	0.14.0
DISTNAME=	fastuuid-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	maturin

# needs uuid7, see tox.ini for test deps
NO_TEST=	Yes

.include "crates.inc"
.include <bsd.port.mk>
