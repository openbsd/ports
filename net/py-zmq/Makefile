# $OpenBSD: Makefile,v 1.14 2016/10/07 21:49:09 shadchin Exp $

COMMENT =		Python bindings for ZeroMQ

MODPY_EGG_VERSION =	15.4.0
DISTNAME =		pyzmq-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}

CATEGORIES =		net devel

HOMEPAGE =		https://github.com/zeromq/pyzmq/

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# LGPLv3/BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		${MODPY_WANTLIB} pthread zmq

MODULES =		lang/python

LIB_DEPENDS =		${MODPY_LIB_DEPENDS} \
			net/zeromq

# ssh tunnelling
RUN_DEPENDS =		security/py-paramiko${MODPY_FLAVOR} \
			devel/py-pexpect${MODPY_FLAVOR}

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
