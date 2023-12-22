COMMENT =		Jupyter notebook format

MODPY_EGG_VERSION =	5.3.0
DISTNAME =		nbformat-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		devel/py-jsonschema${MODPY_FLAVOR}>=2.6 \
			devel/py-jupyter_core${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=4.1 \
			textproc/py-fastjsonschema${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-testpath${MODPY_FLAVOR}

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	nbformat

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
