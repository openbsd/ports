# $OpenBSD: Makefile,v 1.13 2019/04/28 20:51:45 sthen Exp $

COMMENT =		slixmpp is an elegant Python library for XMPP

MODPY_EGG_VERSION =	1.4.2
DISTNAME =		slixmpp-${MODPY_EGG_VERSION}
PKGNAME =		py3-${DISTNAME}
CATEGORIES =		net
REVISION =		1

MAINTAINER =		Kurt Mosiejczuk <kurt@cranky.work>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR} \
			devel/py-asn1-modules${MODPY_FLAVOR} \
			net/py-aiodns${MODPY_FLAVOR} \
			www/py-aiohttp
TEST_DEPENDS =		${RUN_DEPENDS} \
			security/gnupg

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
