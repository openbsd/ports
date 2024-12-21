COMMENT =		service identity verification for pyOpenSSL/py-cryptography

MODPY_DISTV =	24.1.0
DISTNAME=		service_identity-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		security

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD =		hatch-vcs

BUILD_DEPENDS=		devel/py-hatch-fancy-pypi-readme
RUN_DEPENDS =		devel/py-asn1 \
			devel/py-asn1-modules \
			devel/py-attrs \
			net/py-idna \
			security/py-cryptography \
			security/py-openssl

.include <bsd.port.mk>
