# $OpenBSD: Makefile,v 1.2 2018/06/23 21:33:07 landry Exp $

COMMENT =	WebSocket client & server library, WAMP real-time framework

MODPY_EGG_VERSION =	17.10.1
DISTNAME =	autobahn-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	https://github.com/crossbario/autobahn-python

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes
FLAVORS =	python3
FLAVOR ?=

BUILD_DEPENDS =	devel/py-txaio
.if empty (FLAVOR)
TEST_DEPENDS =	devel/py-unittest2 \
		devel/py-trollius
.else
# requires an update to unittest and then traceback2 and linecache2
NO_TEST =	Yes
.endif

.include <bsd.port.mk>
