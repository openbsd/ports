# $OpenBSD: Makefile,v 1.19 2020/07/11 06:49:49 paco Exp $

COMMENT =		slixmpp is an elegant Python library for XMPP

MODPY_EGG_VERSION =	1.5.2
DISTNAME =		slixmpp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests/*.py

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR} \
			devel/py-asn1-modules${MODPY_FLAVOR} \
			net/py-aiodns${MODPY_FLAVOR} \
			www/py-aiohttp
TEST_DEPENDS =		security/gnupg

.include <bsd.port.mk>
