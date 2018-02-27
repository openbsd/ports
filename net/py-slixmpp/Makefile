# $OpenBSD: Makefile,v 1.7 2018/02/27 21:47:38 espie Exp $

COMMENT =		slixmpp is an elegant Python library for XMPP

MODPY_EGG_VERSION =	1.3.0
DISTNAME =		slixmpp-${MODPY_EGG_VERSION}
PKGNAME =		py3-${DISTNAME:S/.post/pl/}
CATEGORIES =		net
REVISION =		0

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		net/py-aiodns${MODPY_FLAVOR} \
			devel/py-asn1${MODPY_FLAVOR} \
			devel/py-asn1-modules${MODPY_FLAVOR}
TEST_DEPENDS =		${RUN_DEPENDS} \
			security/gnupg

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
