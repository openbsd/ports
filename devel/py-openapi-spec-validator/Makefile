COMMENT =		OpenAPI 2.0 (aka Swagger) and OpenAPI 3 spec validator

MODPY_DISTV =	0.7.1
DISTNAME =		openapi_spec_validator-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}
REVISION =		0

CATEGORIES =		devel www

HOMEPAGE =		https://pypi.org/project/openapi-spec-validator/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-jsonschema \
			devel/py-jsonschema-spec \
			devel/py-lazy-object-proxy \
			devel/py-openapi-schema-validator

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core
NO_TEST =		Yes

.include <bsd.port.mk>
