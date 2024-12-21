COMMENT=	quality TLS certs while you wait, for the discerning

MODPY_DISTV=	1.2.0

DISTNAME=	trustme-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

CATEGORIES=	security devel

HOMEPAGE=	https://github.com/python-trio/trustme

# Either MIT or Apache License 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

RUN_DEPENDS=	net/py-idna \
		security/py-cryptography \
		security/py-openssl
TEST_DEPENDS=	security/py-service_identity

.include <bsd.port.mk>
