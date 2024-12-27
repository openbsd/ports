COMMENT =		fast, correct Python JSON library

MODPY_DISTV =		3.10.7
REVISION =		2
DISTNAME =		orjson-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/ijl/orjson

# Apache-2.0, MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Aisha Tammy <aisha@openbsd.org>

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		maturin

TEST_DEPENDS =		devel/py-tz \
			math/py-numpy

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pyproject.toml

.include "crates.inc"

.include <bsd.port.mk>
