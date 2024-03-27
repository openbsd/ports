COMMENT =		client library for executing notebooks

MODPY_EGG_VERSION =	0.9.1
DISTNAME =		nbclient-${MODPY_EGG_VERSION}
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

RUN_DEPENDS =		devel/py-traitlets${MODPY_FLAVOR}>=5.4 \
			devel/py-jupyter_client${MODPY_FLAVOR}>=6.1.12 \
			devel/py-jupyter_core${MODPY_FLAVOR}>=5.1 \
			devel/py-nbformat${MODPY_FLAVOR}>=5.1 \
			devel/py-nest-asyncio${MODPY_FLAVOR}

# needs ipywidgets
TEST_DEPENDS =		textproc/py-xmltodict${MODPY_FLAVOR} \
			devel/ipython${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-ipykernel${MODPY_FLAVOR} \
			devel/py-nbconvert${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-testpath${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
