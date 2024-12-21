COMMENT =		OpenAPI schema validator

MODPY_DISTV =	0.6.2
DISTNAME =		openapi_schema_validator-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://pypi.org/project/openapi-schema-validator/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-jsonschema \
			devel/py-rfc3339-validator

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core
NO_TEST =		Yes

.include <bsd.port.mk>
