# $OpenBSD: Makefile,v 1.1.1.1 2017/12/17 18:03:21 landry Exp $

COMMENT =	WebSocket client & server library, WAMP real-time framework

MODPY_EGG_VERSION =	17.10.1
DISTNAME =	autobahn-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	www

HOMEPAGE =	https://github.com/crossbario/autobahn-python

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

BUILD_DEPENDS =	devel/py-txaio
TEST_DEPENDS =	devel/py-unittest2 \
		devel/py-trollius

.include <bsd.port.mk>
