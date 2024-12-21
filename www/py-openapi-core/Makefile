COMMENT =		client-side and server-side support for OpenAPI Spec v3

MODPY_DISTV =	0.19.2
DISTNAME =		openapi_core-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME:S/_/-/}
REVISION =		0

CATEGORIES =		www

HOMEPAGE =		https://pypi.org/project/openapi-core/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-isodate \
			devel/py-jsonschema-spec \
			devel/py-jsonschema-path \
			devel/py-more-itertools \
			devel/py-openapi-schema-validator \
			devel/py-openapi-spec-validator \
			devel/py-parse \
			devel/py-pathable \
			devel/py-typing-extensions \
			www/py-werkzeug

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core
NO_TEST =		Yes

.include <bsd.port.mk>
