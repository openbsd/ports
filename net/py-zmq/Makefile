# $OpenBSD: Makefile,v 1.32 2021/11/02 00:01:43 sthen Exp $

COMMENT =		Python bindings for ZeroMQ

MODPY_EGG_VERSION =	22.3.0
DISTNAME =		pyzmq-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
EPOCH =			0
REVISION =		0

CATEGORIES =		net devel

HOMEPAGE =		https://github.com/zeromq/pyzmq/

# LGPLv3/BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODPY_WANTLIB} pthread zmq

MODULES =		lang/python
FLAVORS =		python3
FLAVOR =		python3

BUILD_DEPENDS =		sysutils/py-packaging${MODPY_FLAVOR}
LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			net/zeromq

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_DISTUTILS_BUILDARGS =	--zmq=${LOCALBASE}
MAKE_ENV =		LC_CTYPE=en_US.UTF-8
MODPY_PYTEST =		Yes
# verbose because we've seen cores in some cases and they're hard to
# identify in a large test_XXX file
MODPY_PYTEST_ARGS =	-v lib.*

# ulimit -n 1024
TEST_DEPENDS =		math/py-numpy${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

.include <bsd.port.mk>
