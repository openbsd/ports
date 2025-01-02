COMMENT=	quality TLS certs while you wait, for the discerning

MODPY_DISTV=	1.2.1
DISTNAME=	trustme-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security devel

HOMEPAGE=	https://github.com/python-trio/trustme

# Either MIT or Apache License 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	net/py-idna \
		security/py-cryptography
TEST_DEPENDS=	security/py-openssl \
		security/py-service_identity

.include <bsd.port.mk>
