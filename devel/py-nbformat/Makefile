COMMENT =		Jupyter notebook format

MODPY_EGG_VERSION =	5.9.2
DISTNAME =		nbformat-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/py-hatch-nodejs-version${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-jsonschema${MODPY_FLAVOR}>=2.6 \
			devel/py-jupyter_core${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=5.1 \
			textproc/py-fastjsonschema${MODPY_FLAVOR}

# XXX: needs pep440
TEST_DEPENDS =		devel/py-testpath${MODPY_FLAVOR} \
			devel/pre-commit${MODPY_FLAVOR}

.include <bsd.port.mk>
