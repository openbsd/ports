COMMENT =		Jupyter core package

MODPY_EGG_VERSION =	5.7.1
DISTNAME =		jupyter_core-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://jupyter.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

RUN_DEPENDS =		devel/py-traitlets${MODPY_FLAVOR} \
			sysutils/py-platformdirs${MODPY_FLAVOR}

TEST_DEPENDS =		devel/pre-commit${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
