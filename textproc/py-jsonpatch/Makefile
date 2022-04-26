COMMENT =	library to apply JSON Patches according to RFC 6902

MODPY_EGG_VERSION =	1.32

DISTNAME =	jsonpatch-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/stefankoegl/python-json-patch

# BSD-3-Clause
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =          Yes
MODPY_PYTEST_ARGS =     tests.py

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		textproc/py-jsonpointer${MODPY_FLAVOR}
TEST_DEPENDS =		textproc/py-jsonpointer${MODPY_FLAVOR}

.include <bsd.port.mk>
