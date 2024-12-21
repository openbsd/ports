COMMENT =	extract swagger specs from your flask project

MODPY_DISTV =	0.9.7.1
DISTNAME =		flasgger-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

CATEGORIES =		www

HOMEPAGE =		https://github.com/flasgger/flasgger

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools
# XXX: needs import of flex
MODPY_PYTEST_ARGS =	--ignore tests/test_examples.py tests

RUN_DEPENDS =		devel/py-jsonschema \
			devel/py-six \
			sysutils/py-packaging \
			textproc/py-mistune \
			textproc/py-yaml \
			www/py-flask

.include <bsd.port.mk>
