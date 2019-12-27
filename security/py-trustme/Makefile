# $OpenBSD: Makefile,v 1.1.1.1 2019/12/27 05:20:36 kmos Exp $

COMMENT =		quality TLS certs while you wait, for the discerning

MODPY_EGG_VERSION =	0.5.3

DISTNAME =		trustme-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security devel

HOMEPAGE =		https://github.com/python-trio/trustme

# Either MIT or Apache License 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		net/py-idna${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR} \
			security/py-service_identity${MODPY_FLAVOR}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=		net/py-ipaddress
TEST_DEPENDS +=		devel/py-futures
.endif
.include <bsd.port.mk>
