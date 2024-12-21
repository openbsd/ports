COMMENT =		resolving Swagger/OpenAPI 2.0 and 3.0 parser

MODPY_DISTV =	23.6.21.0

DISTNAME =		prance-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/RonnyPfannschmidt/prance

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-six \
			sysutils/py-packaging \
			textproc/py-chardet \
			textproc/py-ruamel.yaml \
			www/py-requests \

# partial failure due to tests/OpenAPI-Specification missing from pypi artifact
TEST_IS_INTERACTIVE =	need network access

.include <bsd.port.mk>
