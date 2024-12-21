COMMENT =	library to apply JSON Patches according to RFC 6902

MODPY_DISTV =	1.33

DISTNAME =	jsonpatch-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	1

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/stefankoegl/python-json-patch

# BSD-3-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =     tests.py

RUN_DEPENDS =		textproc/py-jsonpointer
TEST_DEPENDS =		textproc/py-jsonpointer

.include <bsd.port.mk>
