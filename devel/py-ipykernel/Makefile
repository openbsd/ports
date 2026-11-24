COMMENT=	IPython kernel for Jupyter

# spyder-kernels needs < 7.3.0
MODPY_DISTV=	7.2.0
DISTNAME=	ipykernel-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	devel

HOMEPAGE=	https://ipython.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

BUILD_DEPENDS=	devel/ipython \
		devel/py-jupyter_core \
		devel/py-jupyter_client

RUN_DEPENDS=	devel/py-comm \
		devel/py-debugpy \
		devel/py-jupyter_client \
		devel/py-jupyter_core \
		devel/py-nest-asyncio \
		devel/py-traitlets \
		devel/ipython \
		graphics/py-matplotlib-inline \
		net/py-zmq \
		sysutils/py-packaging \
		sysutils/py-psutil \
		www/py-tornado

# needs ipyparallel
TEST_DEPENDS=	devel/pre-commit \
		devel/py-flaky \
		devel/py-test-asyncio \
		devel/py-test-cov \
		devel/py-test-timeout \
		graphics/py-matplotlib

PORTHOME=	${WRKDIR}

.include <bsd.port.mk>
