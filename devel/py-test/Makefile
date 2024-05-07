COMMENT =		cross-project testing tool for Python

MODPY_EGG_VERSION =	8.2.0
DISTNAME =		pytest-${MODPY_EGG_VERSION}
PKGNAME =		py-test-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://docs.pytest.org/en/latest/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST_ARGS =	testing

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		textproc/py-iniconfig${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			devel/py-pluggy${MODPY_FLAVOR}<2.0

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-argcomplete${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR}>=19.2.0 \
			devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			textproc/py-pygments${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
			devel/py-setuptools${MODPY_FLAVOR} \
			textproc/py-xmlschema${MODPY_FLAVOR} \
			shells/bash

.include <bsd.port.mk>
