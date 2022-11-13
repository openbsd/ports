COMMENT =	pytest plugin for controlling remote data access

MODPY_EGG_VERSION =	0.3.3

DISTNAME =	pytest-remotedata-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/py//}
REVISION =	0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/astropy/pytest-remotedata

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVOR =	python3
FLAVORS =	python3

BUILD_DEPENDS =	devel/py-setuptools_scm${MODPY_FLAVOR}
RUN_DEPENDS =	devel/py-test${MODPY_FLAVOR} \
		sysutils/py-packaging${MODPY_FLAVOR}

# so that pytest can find this plugin; some tests need network access
TEST_DEPENDS =	${BUILD_PKGPATH}

.include <bsd.port.mk>
