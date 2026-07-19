COMMENT =		fast iterable JSON parser

MODPY_DISTV =		0.14.0
DISTNAME =		jiter-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

# needs pytest-examples
MODPY_PYTEST_ARGS= --ignore tests/test_docs.py

WRKSRC = ${WRKDIST}/crates/jiter-python

.include "crates.inc"
.include <bsd.port.mk>
