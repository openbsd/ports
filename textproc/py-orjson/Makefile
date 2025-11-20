COMMENT =		fast, correct Python JSON library

MODPY_DISTV =		3.11.4
DISTNAME =		orjson-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/ijl/orjson

# Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB}

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

TEST_DEPENDS =		devel/py-tz \
			math/py-numpy

.include "crates.inc"
.include <bsd.port.mk>
