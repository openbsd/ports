# $OpenBSD: Makefile,v 1.18 2020/07/03 21:13:02 sthen Exp $

COMMENT =		slixmpp is an elegant Python library for XMPP

MODPY_EGG_VERSION =	1.4.2
DISTNAME =		slixmpp-${MODPY_EGG_VERSION}
PKGNAME =		py3-${DISTNAME}
CATEGORIES =		net
REVISION =		3

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests/*.py

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR} \
			devel/py-asn1-modules${MODPY_FLAVOR} \
			net/py-aiodns${MODPY_FLAVOR} \
			www/py-aiohttp
TEST_DEPENDS =		security/gnupg

.include <bsd.port.mk>
