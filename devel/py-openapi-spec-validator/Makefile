COMMENT =		OpenAPI 2.0 (aka Swagger) and OpenAPI 3 spec validator

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		openapi_spec_validator-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		devel www

HOMEPAGE =		https://pypi.org/project/openapi-spec-validator/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-jsonschema-spec${MODPY_FLAVOR} \
			devel/py-lazy-object-proxy${MODPY_FLAVOR} \
			devel/py-openapi-schema-validator${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core
NO_TEST =		Yes

.include <bsd.port.mk>
