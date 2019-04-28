# $OpenBSD: Makefile,v 1.23 2019/04/28 20:51:46 sthen Exp $

COMMENT =		Python bindings for ZeroMQ

MODPY_EGG_VERSION =	18.0.0
DISTNAME =		pyzmq-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
EPOCH =			0
REVISION =		0

CATEGORIES =		net devel

HOMEPAGE =		https://github.com/zeromq/pyzmq/

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# LGPLv3/BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${MODPY_WANTLIB} pthread zmq

MODULES =		lang/python

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			net/zeromq

MODPY_PI =		Yes
MODPY_DISTUTILS_BUILDARGS =	--zmq=${LOCALBASE}
MAKE_ENV =			LC_CTYPE=en_US.UTF-8

# ulimit -n 1024
TEST_IS_INTERACTIVE =	Yes
TEST_TARGET =		build_ext --inplace test
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
