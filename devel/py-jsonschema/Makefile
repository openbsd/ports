COMMENT =		implementation of JSON Schema validation for Python

MODPY_EGG_VERSION =	4.22.0
DISTNAME =		jsonschema-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/python-jsonschema/jsonschema

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatch-vcs

BUILD_DEPENDS =		devel/py-hatch-fancy-pypi-readme${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			devel/py-jsonschema-specifications${MODPY_FLAVOR} \
			devel/py-rpds-py${MODPY_FLAVOR} \
			textproc/py-referencing${MODPY_FLAVOR}

# jupyter_events needs the "format-nongpl" optional dependencies.
# Not including these could also cause issues due to dpb junking, so
# better to include these RDEPs unconditionally...
RUN_DEPENDS +=		devel/py-isoduration${MODPY_FLAVOR} \
			devel/py-rfc3339-validator${MODPY_FLAVOR} \
			devel/py-rfc3986-validator${MODPY_FLAVOR} \
			net/py-fqdn${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			textproc/py-jsonpointer${MODPY_FLAVOR} \
			www/py-uri-template${MODPY_FLAVOR} \
			www/py-webcolors${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-pip${MODPY_FLAVOR}

.include <bsd.port.mk>
