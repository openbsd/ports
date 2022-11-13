COMMENT =	get the currently executing AST node of a frame

MODPY_EGG_VERSION =	1.1.0

DISTNAME =	executing-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/alexmojaki/executing

# MIT
PERMIT_PACKAGE = Yes

MODULES =	lang/python

MODPY_PI =	Yes
MODPY_PYBUILD =	setuptools

FLAVORS =	python3
FLAVOR =	python3

BUILD_DEPENDS =	devel/py-setuptools_scm${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-asttokens${MODPY_FLAVOR} \
		devel/py-littleutils${MODPY_FLAVOR}

# https://github.com/alexmojaki/executing/issues/34#issuecomment-1090078309
do-test:
	cd ${WRKSRC}; ${MODPY_BIN} tests/test_main.py
	cd ${WRKSRC}; ${MODPY_BIN} tests/test_pytest.py

.include <bsd.port.mk>
