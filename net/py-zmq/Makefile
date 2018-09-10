# $OpenBSD: Makefile,v 1.18 2018/09/10 14:21:15 danj Exp $

COMMENT =		Python bindings for ZeroMQ

MODPY_EGG_VERSION =	17.1.2
DISTNAME =		pyzmq-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

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

# ulimit -n 1024
TEST_IS_INTERACTIVE =	Yes
TEST_TARGET =		build_ext --inplace test
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			math/py-numpy${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		net/py-czmq
.endif

do-test:
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
