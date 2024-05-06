COMMENT =		pytest plugin for Jupyter libraries and extensions

MODPY_EGG_VERSION =	0.6.0
DISTNAME =		pytest_jupyter-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/pytest_/py-test-/}
REVISION =		0

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

RUN_DEPENDS =		devel/py-nbformat${MODPY_FLAVOR}>=5.3 \
			devel/py-ipykernel${MODPY_FLAVOR}>=6.14 \
			devel/py-jupyter_client${MODPY_FLAVOR}>=7.4.0 \
			devel/py-jupyter_core${MODPY_FLAVOR} \
			devel/py-jupyter_server${MODPY_FLAVOR}>=1.21

TEST_DEPENDS =		devel/py-test-timeout${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
