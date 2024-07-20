COMMENT =		IPython kernel for Jupyter

MODPY_EGG_VERSION =	6.29.5
DISTNAME =		ipykernel-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

PORTROACH=		limit:^6

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/ipython${MODPY_FLAVOR} \
			devel/py-jupyter_core${MODPY_FLAVOR}>=4.2 \
			devel/py-jupyter_client${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-comm${MODPY_FLAVOR}>=0.1.1 \
			devel/py-debugpy${MODPY_FLAVOR}>=1.6.5 \
			devel/py-jupyter_client${MODPY_FLAVOR}>=6.1.12 \
			devel/py-jupyter_core${MODPY_FLAVOR}>=5.1 \
			devel/py-nest-asyncio${MODPY_FLAVOR} \
			devel/py-traitlets${MODPY_FLAVOR}>=5.4.0 \
			devel/ipython${MODPY_FLAVOR}>=7.23.1 \
			graphics/py-matplotlib-inline${MODPY_FLAVOR}>=0.1 \
			net/py-zmq${MODPY_FLAVOR}>=24v0 \
			sysutils/py-packaging${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}>=6.1

# needs ipyparallel
TEST_DEPENDS =		devel/pre-commit${MODPY_FLAVOR} \
			devel/py-flaky${MODPY_FLAVOR} \
			devel/py-test-asyncio${MODPY_FLAVOR} \
			devel/py-test-cov${MODPY_FLAVOR} \
			devel/py-test-timeout${MODPY_FLAVOR} \
			graphics/py-matplotlib${MODPY_FLAVOR}

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
