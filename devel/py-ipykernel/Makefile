COMMENT =		IPython kernel for Jupyter

# spyder-kernels needs < 7
MODPY_DISTV =		6.30.1
DISTNAME =		ipykernel-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://ipython.org/

MAINTAINER =		Daniel Dickman <daniel@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		hatchling

BUILD_DEPENDS =		devel/ipython \
			devel/py-jupyter_core>=4.2 \
			devel/py-jupyter_client

RUN_DEPENDS =		devel/py-comm>=0.1.1 \
			devel/py-debugpy>=1.6.5 \
			devel/py-jupyter_client>=8.0.0 \
			devel/py-jupyter_core>=5.1 \
			devel/py-nest-asyncio>=1.4 \
			devel/py-traitlets>=5.4.0 \
			devel/ipython>=7.23.1 \
			graphics/py-matplotlib-inline>=0.1 \
			net/py-zmq>=25v0 \
			sysutils/py-packaging \
			sysutils/py-psutil>=5.7 \
			www/py-tornado>=6.2

# needs ipyparallel
TEST_DEPENDS =		devel/pre-commit \
			devel/py-flaky \
			devel/py-test-asyncio \
			devel/py-test-cov \
			devel/py-test-timeout \
			graphics/py-matplotlib

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
