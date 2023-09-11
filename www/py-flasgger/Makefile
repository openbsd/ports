COMMENT =	extract swagger specs from your flask project

MODPY_EGG_VERSION =	0.9.5
DISTNAME =		flasgger-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/flasgger/flasgger

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
MODPY_PYTEST_ARGS =	--ignore tests/test_examples.py tests

RUN_DEPENDS =		devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-mistune${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-flask${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
