COMMENT =		client-side and server-side support for OpenAPI Spec v3

MODPY_EGG_VERSION =	0.16.5
DISTNAME =		openapi_core-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/_/-/}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://pypi.org/project/openapi-core/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-isodate${MODPY_FLAVOR} \
			devel/py-jsonschema-spec${MODPY_FLAVOR} \
			devel/py-more-itertools${MODPY_FLAVOR} \
			devel/py-openapi-schema-validator${MODPY_FLAVOR} \
			devel/py-openapi-spec-validator${MODPY_FLAVOR} \
			devel/py-parse${MODPY_FLAVOR} \
			devel/py-pathable${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			www/py-werkzeug${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core
NO_TEST =		Yes

.include <bsd.port.mk>
