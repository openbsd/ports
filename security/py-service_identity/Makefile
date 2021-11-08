# $OpenBSD: Makefile,v 1.12 2021/11/08 14:30:53 sthen Exp $

COMMENT =		service identity verification for pyOpenSSL/py-cryptography

MODPY_EGG_VERSION =	21.1.0
PKGNAME =		py-${DISTNAME:S/-/_/}

# also on pypi, but no tests present
GH_ACCOUNT =		pyca
GH_PROJECT =		service-identity
GH_TAGNAME =		${MODPY_EGG_VERSION}

CATEGORIES =		security

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR} \
			devel/py-asn1-modules${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
