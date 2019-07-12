# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:35 sthen Exp $

COMMENT =		service identity verification for pyOpenSSL/py-cryptography

MODPY_EGG_VERSION =	18.1.0
DISTNAME =		service_identity-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		1

# also on pypi, but no tests present
GH_ACCOUNT =		pyca
GH_PROJECT =		service_identity
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
FLAVOR ?=

TEST_ENV +=		PYTHONPATH=${WRKSRC}/lib

.include <bsd.port.mk>
