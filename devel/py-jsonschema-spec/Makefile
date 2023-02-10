COMMENT =		JSONSchema Spec with object-oriented paths

MODPY_EGG_VERSION =	0.1.3
DISTNAME =		jsonschema_spec-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:S/_/-/}

CATEGORIES =		devel

HOMEPAGE =		https://pypi.org/project/jsonschema-spec/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-jsonschema${MODPY_FLAVOR} \
			devel/py-pathable${MODPY_FLAVOR} \
			devel/py-typing-extensions${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR  =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		poetry-core
NO_TEST =		Yes

.include <bsd.port.mk>
