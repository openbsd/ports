COMMENT=	service identity verification for pyOpenSSL/py-cryptography

MODPY_DISTV=	26.1.0
DISTNAME=	service_identity-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

# MIT
PERMIT_PACKAGE=Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatch-vcs

BUILD_DEPENDS=	devel/py-hatch-fancy-pypi-readme
RUN_DEPENDS=	devel/py-attrs \
		net/py-idna \
		security/py-cryptography \
		security/py-openssl

.include <bsd.port.mk>
