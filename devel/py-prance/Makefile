COMMENT =		resolving Swagger/OpenAPI 2.0 and 3.0 parser

MODPY_DISTV =		25.4.8.0
DISTNAME =		prance-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/RonnyPfannschmidt/prance

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools_scm
MODPY_PI =		Yes

RUN_DEPENDS =		textproc/py-chardet \
			textproc/py-ruamel.yaml \
			www/py-requests \
			sysutils/py-packaging

# tests need network
TEST_DEPENDS =		devel/py-openapi-spec-validator

.include <bsd.port.mk>
