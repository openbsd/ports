COMMENT =	python package to parse and build CSS

CATEGORIES =	textproc

MODPY_EGG_VERSION =	2.4.0
DISTNAME =	cssutils-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
MODPY_PI =	Yes

# GPLv3
PERMIT_PACKAGE=	Yes

HOMEPAGE =	https://github.com/jaraco/cssutils

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST_ARGS =	cssutils

FLAVORS =	python3
FLAVOR =	python3

BUILD_DEPENDS =	devel/py-setuptools_scm${MODPY_FLAVOR}
TEST_DEPENDS =	devel/py-test-cov${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		textproc/py-lxml${MODPY_FLAVOR} \
		textproc/py-cssselect${MODPY_FLAVOR}

.include <bsd.port.mk>
