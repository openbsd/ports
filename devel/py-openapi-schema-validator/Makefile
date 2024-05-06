COMMENT =		OpenAPI schema validator

MODPY_EGG_VERSION =	0.4.3
DISTNAME =		openapi_schema_validator-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/_/-/}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://pypi.org/project/openapi-schema-validator/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-rfc3339-validator${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core
NO_TEST =		Yes

.include <bsd.port.mk>
