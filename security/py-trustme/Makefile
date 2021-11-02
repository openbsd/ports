# $OpenBSD: Makefile,v 1.4 2021/11/02 00:02:19 sthen Exp $

COMMENT =	quality TLS certs while you wait, for the discerning

MODPY_EGG_VERSION =	0.7.0

DISTNAME =	trustme-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	security devel

HOMEPAGE =	https://github.com/python-trio/trustme

# Either MIT or Apache License 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =	python3
FLAVOR =	python3

RUN_DEPENDS =	net/py-idna${MODPY_FLAVOR} \
		security/py-cryptography${MODPY_FLAVOR} \
		security/py-openssl${MODPY_FLAVOR} \
		security/py-service_identity${MODPY_FLAVOR}

.include <bsd.port.mk>
