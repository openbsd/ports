COMMENT =		Python bindings for ZeroMQ

# 26+ requires cython3
MODPY_EGG_VERSION =	25.1.1
DISTNAME =		pyzmq-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		net devel

HOMEPAGE =		https://github.com/zeromq/pyzmq/

# LGPLv3/BSD
PERMIT_PACKAGE =	Yes

EPOCH =			0

WANTLIB =		${MODPY_WANTLIB} pthread zmq

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		sysutils/py-packaging${MODPY_FLAVOR} \
			lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			net/zeromq

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm
MAKE_ENV =		LC_CTYPE=en_US.UTF-8
# verbose because we've seen cores in some cases and they're hard to
# identify in a large test_XXX file
MODPY_PYTEST_ARGS =	-v build/lib.*

# ulimit -n 1024
TEST_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

.include <bsd.port.mk>
