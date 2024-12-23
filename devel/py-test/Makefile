COMMENT =		cross-project testing tool for Python

MODPY_DISTV =		8.3.4
DISTNAME =		pytest-${MODPY_DISTV}
PKGNAME =		py-test-${MODPY_DISTV}

CATEGORIES =		devel

HOMEPAGE =		https://docs.pytest.org/en/latest/

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_PYTEST_ARGS =	testing

RUN_DEPENDS =		textproc/py-iniconfig \
			sysutils/py-packaging \
			devel/py-pluggy<2.0

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-argcomplete \
			devel/py-attrs \
			devel/py-hypothesis \
			devel/py-mock \
			textproc/py-pygments \
			www/py-requests \
			devel/py-setuptools \
			textproc/py-xmlschema \
			shells/bash

.include <bsd.port.mk>
