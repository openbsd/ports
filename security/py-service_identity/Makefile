COMMENT =		service identity verification for pyOpenSSL/py-cryptography

MODPY_EGG_VERSION =	24.1.0
DISTNAME=		service_identity-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		security

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD =		hatch-vcs

BUILD_DEPENDS=		devel/py-hatch-fancy-pypi-readme${MODPY_FLAVOR}
RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR} \
			devel/py-asn1-modules${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			net/py-idna${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
