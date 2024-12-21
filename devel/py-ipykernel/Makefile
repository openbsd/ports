COMMENT =		IPython kernel for Jupyter

MODPY_DISTV =	6.29.5
DISTNAME =		ipykernel-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		1

PORTROACH=		limit:^6

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
			devel/py-jupyter_client>=6.1.12 \
			devel/py-jupyter_core>=5.1 \
			devel/py-nest-asyncio \
			devel/py-traitlets>=5.4.0 \
			devel/ipython>=7.23.1 \
			graphics/py-matplotlib-inline>=0.1 \
			net/py-zmq>=24v0 \
			sysutils/py-packaging \
			sysutils/py-psutil \
			www/py-tornado>=6.1

# needs ipyparallel
TEST_DEPENDS =		devel/pre-commit \
			devel/py-flaky \
			devel/py-test-asyncio \
			devel/py-test-cov \
			devel/py-test-timeout \
			graphics/py-matplotlib

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
