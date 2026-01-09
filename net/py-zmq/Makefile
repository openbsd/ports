COMMENT =		Python bindings for ZeroMQ

# 26+ uses MODPY_PYBUILD=scikit-build-core
MODPY_DISTV =		25.1.2
REVISION =		0
DISTNAME =		pyzmq-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		net devel

HOMEPAGE =		https://github.com/zeromq/pyzmq/

# LGPLv3/BSD
PERMIT_PACKAGE =	Yes

EPOCH =			0

WANTLIB =		${MODPY_WANTLIB} pthread zmq

MODULES =		lang/python

BUILD_DEPENDS =		sysutils/py-packaging \
			lang/cython

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			net/zeromq

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MODPY_TEST_LINK_SO =	Yes

# ulimit -n 1024
TEST_DEPENDS =		devel/py-test-asyncio \
			math/py-numpy \
			www/py-tornado

.include <bsd.port.mk>
