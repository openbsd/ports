COMMENT =		Jupyter event system library

MODPY_EGG_VERSION =	0.10.0
DISTNAME =		jupyter_events-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-jsonschema${MODPY_FLAVOR}>=4.18.0 \
			devel/py-rfc3339-validator${MODPY_FLAVOR} \
			devel/py-rich${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=5.3 \
			textproc/py-python-json-logger${MODPY_FLAVOR}>=2.0.4 \
			textproc/py-referencing${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR}>=5.3

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/pre-commit \
			devel/py-click${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR} \
			devel/py-test-console-scripts${MODPY_FLAVOR}

.include <bsd.port.mk>
